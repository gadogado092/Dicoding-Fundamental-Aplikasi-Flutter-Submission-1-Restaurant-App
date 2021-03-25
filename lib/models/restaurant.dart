import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_app/models/drink.dart';
import 'package:restaurant_app/models/food.dart';

part 'restaurant.g.dart';

@JsonSerializable()
class Restaurants {
  @JsonKey(name: 'restaurants')
  final List<Restaurant> listRestaurant;

  Restaurants(this.listRestaurant);
  factory Restaurants.fromJson(Map<String, dynamic> json) =>
      _$RestaurantsFromJson(json);
}

@JsonSerializable()
class Restaurant {
  final String id;
  final String name;
  final String description;
  final String pictureId;
  final String city;
  final double rating;

  @JsonKey(name: 'menus')
  Menu menu;

  Restaurant(this.id, this.name, this.description, this.pictureId, this.city,
      this.rating);

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
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
