import 'package:json_annotation/json_annotation.dart';

part 'drink.g.dart';

@JsonSerializable()

class Drink{
  final String name;

  Drink(this.name);

  factory Drink.fromJson(Map<String, dynamic> json) => _$DrinkFromJson(json);
}