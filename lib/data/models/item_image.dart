import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_image.freezed.dart';
part 'item_image.g.dart';

@freezed
class ItemImage with _$ItemImage {
  factory ItemImage({
    required String url,
  }) = _ItemImage;

  factory ItemImage.fromJson(Map<String, dynamic> json) =>
      _$ItemImageFromJson(json);
}
