import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class ProductCategoryModel with _$ProductCategoryModel{
  factory ProductCategoryModel({
    required String title,
    required IconData iconUrl,
    required Color color,
  }) = _ProductCategoryModel;
}
