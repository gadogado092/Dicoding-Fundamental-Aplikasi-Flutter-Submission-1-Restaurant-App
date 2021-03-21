import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_app/models/drink.dart';
import 'package:restaurant_app/models/food.dart';

part 'restaurant.g.dart';

@JsonSerializable()
class Restaurant {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;

  @JsonKey(name: 'menus')
  Menu menu;
}

@JsonSerializable()
class Menu {
  @JsonKey(name: 'foods')
  final List<Food> listFood;

  @JsonKey(name: 'drinks')
  final List<Drink> listDrink;

  Menu(this.listFood, this.listDrink);

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}
