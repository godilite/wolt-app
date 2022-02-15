import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:woltapp/data/api/wolt_api_client.dart';
import 'package:woltapp/data/models/cordinate.dart';
import 'package:woltapp/data/models/item.dart';
import 'package:woltapp/data/models/venue.dart';
import 'package:woltapp/data/repository/venue_repository_impl.dart';

class MockWoltApiClient extends Mock implements WoltApiClient {}

void main() {
  group('VenueRepository', () {
    late WoltApiClient woltApiClient;
    late VenueRepositoryImpl subject;

    final venues = List.generate(4, (i) => Venue(id: "$i"));
    final items = List.generate(
      3,
      (i) => Item(
        title: '$i',
        venue: venues[i],
        trackId: 'mock-id-$i',
      ),
    );

    setUp(() {
      woltApiClient = MockWoltApiClient();
      when(() => woltApiClient.fetchVenues(
              Cordinate(latitude: 60.170187, longitude: 24.930599)))
          .thenAnswer((_) async => items);

      subject = VenueRepositoryImpl();
    });

    test('constructor returns normally', () {
      expect(
        () => VenueRepositoryImpl(),
        returnsNormally,
      );
    });

    group('.fetchVenues', () {
      test('throws VenueException when api throws an exception', () async {
        when(() => woltApiClient.fetchVenues(
                Cordinate(latitude: 60.170187, longitude: 24.930599)))
            .thenThrow(Exception());

        expect(
          () => subject.fetchVenues(
              cordinate: Cordinate(latitude: 60.170187, longitude: 24.930599)),
          throwsA(isA<VenueException>()),
        );

        verify(() => woltApiClient.fetchVenues(
            Cordinate(latitude: 60.170187, longitude: 24.930599))).called(1);
      });

      test('makes correct request', () async {
        await subject.fetchVenues(
            cordinate: Cordinate(latitude: 60.170187, longitude: 24.930599));

        verify(() => woltApiClient.fetchVenues(
            Cordinate(latitude: 60.170187, longitude: 24.930599))).called(1);
      });
    });
  });
}
