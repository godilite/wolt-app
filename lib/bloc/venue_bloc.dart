import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woltapp/data/models/item.dart';
import 'package:woltapp/data/models/ticker.dart';
import 'package:woltapp/data/repository/local_repository.dart';
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
  const factory VenueEvent.getFavorites() = VenueEventGetFavorites;
  const factory VenueEvent.favorite(Item item) = VenueEventFavorite;
}

class VenueBloc extends Bloc<VenueEvent, VenueState> {
  VenueBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const VenueState.loading()) {
    on<VenueEventGetFavorites>(_onGetFavorites);
    on<VenueEventLoad>(_onVenueLoaded);
    on<VenueEventFavorite>(_onFavorite);
  }
  final Ticker _ticker;
  final _repository = VenueRepositoryImpl();
  final _localRepo = LocalRepository();
  static const int _seconds = 10;
  final locations = LocationRepository.locations;

  StreamSubscription<int>? _tickerSubscription;
  late List<Item> items;
  int _currentLocation = 0;
  List<Item> _favorites = [];
  List<String?> get favoriteItems =>
      _favorites.map((e) => e.venue?.id).toList();

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onVenueLoaded(VenueEventLoad event, Emitter<VenueState> emit) async {
    items =
        await _repository.fetchVenues(cordinate: locations[_currentLocation]);
    final itemsFavoriteMap = items
        .map(
          (e) => e.copyWith(isFavorite: favoriteItems.contains(e.venue?.id)),
        )
        .toList();
    emit(VenueStateLoaded(itemsFavoriteMap));
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

  void _onFavorite(VenueEventFavorite event, Emitter<VenueState> emit) async {
    final favoriteIds = _favorites.map((e) => e.trackId).toSet();
    final item = event.item;
    if (favoriteIds.contains(item.trackId)) {
      _favorites.removeWhere((element) => element.trackId == item.trackId);
    } else {
      _favorites.add(item);
    }
    _localRepo.updateFavoriteList(_favorites);
  }

  void _onGetFavorites(
      VenueEventGetFavorites event, Emitter<VenueState> emit) async {
    _favorites = await _localRepo.getFavoriteVenues();
  }
}
