// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return Restaurant()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..pictureId = json['pictureId'] as String
    ..city = json['city'] as String
    ..rating = (json['rating'] as num)?.toDouble()
    ..menu = json['menus'] == null
        ? null
        : Menu.fromJson(json['menus'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'pictureId': instance.pictureId,
      'city': instance.city,
      'rating': instance.rating,
      'menus': instance.menu,
    };

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return Menu(
    (json['foods'] as List)
        ?.map(
            (e) => e == null ? null : Food.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['drinks'] as List)
        ?.map(
            (e) => e == null ? null : Drink.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'foods': instance.listFood,
      'drinks': instance.listDrink,
    };
