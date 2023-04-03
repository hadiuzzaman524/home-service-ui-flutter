import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';


@freezed
class Product with _$Product {
  factory Product({
    required String title,
    required String id,
    required String category,
    required String description,
    required String imageUrl,
    required bool isMostPopular,
  }) = _Product;

}
