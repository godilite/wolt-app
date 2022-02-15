// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Venue _$$_VenueFromJson(Map<String, dynamic> json) => _$_Venue(
      id: json['id'] as String,
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      name: json['name'] as String?,
      shortDescription: json['short_description'] as String?,
    );

Map<String, dynamic> _$$_VenueToJson(_$_Venue instance) => <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'name': instance.name,
      'short_description': instance.shortDescription,
    };
