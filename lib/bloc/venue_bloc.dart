import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woltapp/data/models/item.dart';
import 'package:woltapp/data/models/ticker.dart';
import 'package:woltapp/data/repository/location_repository.dart';
import 'package:woltapp/data/repository/venue_repository_impl.dart';
import 'package:bloc/bloc.dart';

part 'venue_bloc.freezed.dart';

@freezed
class VenueState with _$VenueState {
  const factory VenueState.loading() = VenueStateLoading;

  const factory VenueState.loaded(List<Item> items) = VenueStateLoaded;
}

@freezed
class VenueEvent with _$VenueEvent {
  const factory VenueEvent.load() = VenueEventLoad;
}

class VenueBloc extends Bloc<VenueEvent, VenueState> {
  VenueBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const VenueState.loading()) {
    on<VenueEventLoad>(_onVenueLoaded);
  }
  final Ticker _ticker;
  final _repository = VenueRepositoryImpl();
  static const int _seconds = 10;
  final locations = LocationRepository.locations;

  StreamSubscription<int>? _tickerSubscription;
  late List<Item> items;
  int _currentLocation = 0;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onVenueLoaded(VenueEventLoad event, Emitter<VenueState> emit) async {
    items =
        await _repository.fetchVenues(cordinate: locations[_currentLocation]);
    emit(VenueStateLoaded(items));
    _onRefreshData();
  }

  //Polling Handler to refresh data every 10 seconds
  void _onRefreshData() {
    _tickerSubscription =
        _ticker.tick(ticks: _seconds).listen((duration) async {
      if (duration == 0) {
        if (_currentLocation < locations.length - 1) {
          _currentLocation++;
        } else if (_currentLocation == locations.length - 1) {
          _currentLocation = 0;
        }
        add(const VenueEventLoad());
      }
    });
  }
}
