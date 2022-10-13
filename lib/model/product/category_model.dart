import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class Category {
  String id;
  String categoriesName;

  Category(this.id, this.categoriesName);

  factory Category.fromJson(Map<String, dynamic>json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}