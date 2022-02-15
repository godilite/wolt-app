import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'package:woltapp/data/api/wolt_api_client.dart';
import 'package:woltapp/data/models/cordinate.dart';
import 'package:woltapp/data/models/item.dart';
import 'package:woltapp/data/models/venue.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late Uri woltUri;

  group('WoltXApiClient', () {
    late http.Client httpClient;
    late WoltApiClient subject;
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
      final params = {'lat': "60.170187", 'lon': "24.930599"};
      httpClient = MockHttpClient();
      subject = WoltApiClient(httpClient: httpClient);
      woltUri =
          Uri.https(WoltApiClient.authority, '/v1/pages/restaurants', params);
    });

    test('constructor returns normally', () {
      expect(
        () => WoltApiClient(),
        returnsNormally,
      );
    });

    group('.fetchVenues', () {
      setUp(() {
        when(() => httpClient.get(woltUri)).thenAnswer(
          (_) async => http.Response(json.encode(items), 200),
        );
      });

      test('throws HttpException when http client throws exception', () {
        when(() => httpClient.get(woltUri)).thenThrow(Exception());

        expect(
          () => subject.fetchVenues(
              Cordinate(latitude: 60.170187, longitude: 24.930599)),
          throwsA(isA<HttpException>()),
        );
      });

      test(
        'throws HttpRequestFailure when response status code is not 200',
        () {
          when(() => httpClient.get(woltUri)).thenAnswer(
            (_) async => http.Response('', 400),
          );

          expect(
            () => subject.fetchVenues(
                Cordinate(latitude: 60.170187, longitude: 24.930599)),
            throwsA(
              isA<HttpRequestFailure>()
                  .having((error) => error.statusCode, 'statusCode', 400),
            ),
          );
        },
      );

      test(
        'throws JsonDecodeException when decoding response fails',
        () {
          when(() => httpClient.get(woltUri)).thenAnswer(
            (_) async => http.Response('definitely not json!', 200),
          );

          expect(
            () => subject.fetchVenues(
                Cordinate(latitude: 60.170187, longitude: 24.930599)),
            throwsA(isA<JsonDecodeException>()),
          );
        },
      );

      test('makes correct request', () async {
        await subject
            .fetchVenues(Cordinate(latitude: 60.170187, longitude: 24.930599));

        verify(
          () => httpClient.get(woltUri),
        ).called(1);
      });

      test('returns correct list of venues', () {
        expect(
          subject.fetchVenues(
              Cordinate(latitude: 60.170187, longitude: 24.930599)),
          completion(equals(items)),
        );
      });
    });
  });
}
