import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()

class Food{
  final String name;

  Food(this.name);

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}