import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woltapp/data/models/rating.dart';
part 'venue.freezed.dart';
part 'venue.g.dart';

@freezed
class Venue with _$Venue {
  factory Venue({
    required String id,
    Rating? rating,
    String? name,
    @JsonKey(name: 'short_description') String? shortDescription,
  }) = _Venue;

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}
