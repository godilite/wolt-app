import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woltapp/data/models/item_image.dart';
import 'package:woltapp/data/models/venue.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    String? title,
    ItemImage? image,
    @Default(false) bool isFavorite,
    Venue? venue,
    @JsonKey(name: 'track_id') String? trackId,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
