import 'package:woltapp/data/api/wolt_api_client.dart';
import 'package:woltapp/data/models/item.dart';
import 'package:woltapp/data/models/cordinate.dart';

/// Thrown when an error occurs while looking up venues.
class VenueException implements Exception {}

/// A Dart class which exposes methods to implement venue-related
/// functionality.
class VenueRepositoryImpl {
  VenueRepositoryImpl({WoltApiClient? woltApiClient})
      : _woltApiClient = woltApiClient ?? WoltApiClient();

  final WoltApiClient _woltApiClient;

  /// Returns a list of venues.
  ///
  /// Throws a [VenueException] if an error occurs.
  Future<List<Item>> fetchVenues({required Cordinate cordinate}) {
    try {
      return _woltApiClient.fetchVenues(cordinate);
    } on Exception {
      throw VenueException();
    }
  }
}
