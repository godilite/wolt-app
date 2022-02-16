import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:woltapp/data/models/cordinate.dart';
import 'package:woltapp/data/models/item.dart';

/// Thrown if an exception occurs while making an `http` request.
class HttpException implements Exception {}

/// Thrown if an `http` request returns a non-200 status code.
class HttpRequestFailure implements Exception {
  const HttpRequestFailure(this.statusCode);

  /// The status code of the response.
  final int statusCode;
}

/// Thrown when an error occurs while decoding the response body.
class JsonDecodeException implements Exception {}

/// Thrown when an error occurs while deserializing the response body.
class JsonDeserializationException implements Exception {}

/// A Dart API Client for the Wolt REST API.
class WoltApiClient {
  WoltApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  /// The host URL used for all API requests.
  ///
  /// Only exposed for testing purposes. Do not use directly.
  @visibleForTesting
  static const authority = 'restaurant-api.wolt.com';

  final http.Client _httpClient;

  /// Fetches Venues based on location Cordinate.
  ///
  /// REST call: `GET /v1/pages/restaurants`
  Future<List<Item>> fetchVenues(Cordinate cordinate) async {
    final params = {
      'lat': cordinate.latitude.toString(),
      'lon': cordinate.longitude.toString(),
    };
    final uri = Uri.https(authority, '/v1/pages/restaurants', params);
    final responseBody = await _get(uri);

    try {
      final items =
          responseBody.map((dynamic item) => Item.fromJson(item)).toList();
      return items.take(15).toList();
    } catch (_) {
      throw JsonDeserializationException();
    }
  }

  Future<List<dynamic>> _get(Uri uri) async {
    http.Response response;

    try {
      response = await _httpClient.get(uri);
    } catch (_) {
      throw HttpException();
    }

    if (response.statusCode != 200) {
      throw HttpRequestFailure(response.statusCode);
    }

    try {
      final res = json.decode(response.body);
      return res['sections'][0]['items'];
    } catch (e) {
      throw JsonDecodeException();
    }
  }
}
