import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'package:woltapp/data/api/wolt_api_client.dart';
import 'package:woltapp/data/models/cordinate.dart';
import 'package:woltapp/data/models/item.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late Uri woltUri;
  final jsonResponse = {
    "sections": [
      {
        "items": [
          {
            "filtering": {
              "filters": [
                {
                  "id": "primary",
                  "values": ["burgers", "dessert", "american", "wraps", "salad"]
                }
              ]
            },
            "image": {
              "blurhash": "jjTYCHru;;DcT;qIh5plTaKBcPBk",
              "url":
                  "https://prod-wolt-venue-images-cdn.wolt.com/5ae6013cf78b5a000bb64022/bc80c9c4-9ead-11eb-9441-4efedaea1730_mcd_wolt_etusivu_1010x544.png",
              "variants": ["xs", "sm", "md", "frontpage"]
            },
            "link": {
              "target": "5ae6013cf78b5a000bb64022",
              "target_sort": "default",
              "target_title": "",
              "title": "",
              "type": "venue-id",
              "venue_mainimage_blurhash": "jcQFNd;YXjgQpshrTnJAFkOXh7cR"
            },
            "sorting": {
              "sortables": [
                {"id": "delivery-price", "value": 25},
                {"id": "rating", "value": 569},
                {"id": "delivery-estimate", "value": 0},
                {"id": "distance", "value": 5}
              ]
            },
            "template": "venue-large",
            "title": "McDonald's Helsinki Kamppi",
            "track_id": "venue-mcdonalds-kamppi-1",
            "venue": {
              "address": "Fredrikinkatu 46",
              "badges": [],
              "categories": [],
              "city": "",
              "currency": "EUR",
              "delivers": true,
              "delivery_price": "€1.90",
              "delivery_price_highlight": false,
              "estimate": 25,
              "estimate_range": "20-30",
              "franchise": "",
              "id": "5ae6013cf78b5a000bb64022",
              "location": [24.930145740509033, 60.16896328076366],
              "name": "McDonald's Helsinki Kamppi",
              "online": true,
              "price_range": 1,
              "product_line": "restaurant",
              "rating": {"rating": 3, "score": 8.2},
              "short_description": "I'm lovin' it.",
              "show_wolt_plus": false,
              "slug": "mcdonalds-kamppi-1",
              "tags": ["salad", "dessert", "wrap"]
            }
          },
          {
            "filtering": {
              "filters": [
                {
                  "id": "primary",
                  "values": ["dessert", "mexican", "ice_cream"]
                }
              ]
            },
            "image": {
              "blurhash": "jjIEp;4WdcOQ;6LbFkGYNHPbORlr",
              "url":
                  "https://prod-wolt-venue-images-cdn.wolt.com/5cc175b2daaaee24fdbb92ee/6f47829d0b2a7f3fa357416eb04edd01-edits/7487c59e28f78880753406a4315752b8",
              "variants": ["xs", "sm", "md", "frontpage"]
            },
            "link": {
              "target": "5cc175b2daaaee24fdbb92ee",
              "target_sort": "default",
              "target_title": "",
              "title": "",
              "type": "venue-id",
              "venue_mainimage_blurhash": "joKV688VhrKR;sOXFkGYPcOWOSpG"
            },
            "sorting": {
              "sortables": [
                {"id": "delivery-price", "value": 23},
                {"id": "rating", "value": 613},
                {"id": "delivery-estimate", "value": 17},
                {"id": "distance", "value": 1}
              ]
            },
            "template": "venue-large",
            "title": "Taco Bell Tennispalatsi",
            "track_id": "venue-taco-bell-tennispalatsi",
            "venue": {
              "address": "Fredrikinkatu 65",
              "badges": [],
              "categories": [],
              "city": "",
              "currency": "EUR",
              "delivers": true,
              "delivery_price": "€1.90",
              "delivery_price_highlight": false,
              "estimate": 30,
              "estimate_range": "25-35",
              "franchise": "",
              "id": "5cc175b2daaaee24fdbb92ee",
              "location": [24.930553436279297, 60.169208781597746],
              "name": "Taco Bell Tennispalatsi",
              "online": true,
              "price_range": 1,
              "product_line": "restaurant",
              "rating": {"rating": 3, "score": 8},
              "short_description": "Meksikolainen pikaruokaravintola",
              "show_wolt_plus": false,
              "slug": "taco-bell-tennispalatsi",
              "tags": ["burrito", "mexican", "snacks"]
            }
          },
          {
            "filtering": {
              "filters": [
                {
                  "id": "primary",
                  "values": [
                    "meat-fish",
                    "kebab",
                    "fish",
                    "mediterranean",
                    "salad"
                  ]
                }
              ]
            },
            "image": {
              "blurhash": "j5CoV:01jLoP00;Z4ydq0icSgPXp",
              "url":
                  "https://prod-wolt-venue-images-cdn.wolt.com/56b87c7c3def5e52421ec206/f71318eac56c3c1573a16fff3cd788c9",
              "variants": ["xs", "sm", "md", "frontpage"]
            },
            "link": {
              "target": "56b87c7c3def5e52421ec206",
              "target_sort": "default",
              "target_title": "",
              "title": "",
              "type": "venue-id",
              "venue_mainimage_blurhash": "j6pRJoPb4zPt;:Pbd5qY00KGXtcP"
            },
            "sorting": {
              "sortables": [
                {"id": "delivery-price", "value": 369},
                {"id": "rating", "value": 526},
                {"id": "delivery-estimate", "value": 15},
                {"id": "distance", "value": 345}
              ]
            },
            "template": "venue-large",
            "title": "Chilli Hakaniemi",
            "track_id": "venue-chilli-hakaniemi",
            "venue": {
              "address": "Siltasaarenkatu 11",
              "badges": [],
              "categories": [],
              "city": "",
              "currency": "EUR",
              "delivers": true,
              "delivery_price": "€4.90",
              "delivery_price_highlight": false,
              "estimate": 25,
              "estimate_range": "20-30",
              "franchise": "",
              "id": "56b87c7c3def5e52421ec206",
              "location": [24.950020909309387, 60.180430480426466],
              "name": "Chilli Hakaniemi",
              "online": true,
              "price_range": 1,
              "product_line": "restaurant",
              "rating": {"rating": 3, "score": 8.4},
              "short_description": "Käsintehtyä döneriä",
              "show_wolt_plus": false,
              "slug": "chilli-hakaniemi",
              "tags": ["kebab", "falafel", "salad"]
            }
          },
        ],
      }
    ]
  };
  group('WoltXApiClient', () {
    late http.Client httpClient;
    late WoltApiClient subject;
    final encodedJson = json.encode(jsonResponse);
    final res = json.decode(encodedJson);

    final decodedRes = res['sections'][0]['items'];
    final items =
        decodedRes.map((dynamic item) => Item.fromJson(item)).toList();

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
          (_) async => http.Response(json.encode(jsonResponse), 200, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          }),
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
