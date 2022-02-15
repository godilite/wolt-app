import 'package:woltapp/data/models/cordinate.dart';
import 'package:woltapp/data/models/item.dart';

abstract class VenueRepository {
  Future<List<Item>> fetchVenues({required Cordinate cordinate});
}
