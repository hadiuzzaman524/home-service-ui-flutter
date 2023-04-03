import 'package:ar_products_flutter/domain/entities/product_list/category.dart';
import 'package:ar_products_flutter/domain/entities/product_list/products.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseRemoteDataSource {

  Future<List<Product>> fetchAllProducts() async {
    return [
      Product(
          title: "test",
          id: "2",
          category: "Cleaning",
          description: "description",
          imageUrl: DummyAssetPath.furnitureImageUrl,
          isMostPopular: true),
    ];
  }

  Future<List<ProductCategoryModel>> fetchCategoryList() async {
    return [
      ProductCategoryModel(
        color: Color(0xffF4C0DE),
          title: "Cleaning", iconUrl: Icons.cleaning_services),
      ProductCategoryModel(
        color: Color(0xffCFCBF6),
          title: "Reparing", iconUrl: Icons.repartition_outlined ),
      ProductCategoryModel(
        color:Color(0xffFCDF4C8),
          title: "Painting", iconUrl: Icons.format_paint_outlined),
      ProductCategoryModel(
          color: Color(0xffF8E4C3),
          title: "Delivery", iconUrl: Icons.transfer_within_a_station),

     ];
  }
}
