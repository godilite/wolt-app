// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      title: json['title'] as String?,
      image: json['image'] == null
          ? null
          : ItemImage.fromJson(json['image'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
      venue: json['venue'] == null
          ? null
          : Venue.fromJson(json['venue'] as Map<String, dynamic>),
      trackId: json['track_id'] as String?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'isFavorite': instance.isFavorite,
      'venue': instance.venue,
      'track_id': instance.trackId,
    };
