

import 'package:json_annotation/json_annotation.dart';
import 'category_model.dart';
part 'product_model.g.dart';

@JsonSerializable()
class Product {
  String id;
  String title;
  String description;
  double price;
  int quantity;
  String imageUrl;
  Category category;

  Product(this.id, this.title, this.description, this.price,this.quantity, this.imageUrl, this.category);


  factory Product.fromJson(Map<String, dynamic>json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

}