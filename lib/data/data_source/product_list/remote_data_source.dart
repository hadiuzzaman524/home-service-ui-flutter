import 'package:ar_products_flutter/domain/entities/product_list/category.dart';
import 'package:ar_products_flutter/domain/entities/product_list/products.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseRemoteDataSource {
  final String text =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s";

  Future<List<Product>> fetchAllProducts() async {
    return [
      Product(
          title: "House Cleaning",
          id: "2",
          category: "Cleaning",
          description: text,
          imageUrl:
              "https://images.unsplash.com/photo-1581578731548-c64695cc6952?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG91c2UlMjBjbGVhbmluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
          isMostPopular: false),
      Product(
          title: "House Cleaning 2",
          id: "2",
          category: "Cleaning",
          description: text,
          imageUrl:
              "https://images.unsplash.com/photo-1527515637462-cff94eecc1ac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG91c2UlMjBjbGVhbmluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
          isMostPopular: true),
      Product(
          title: "Home Reparing",
          id: "2",
          category: "Reparing",
          description: text,
          imageUrl:
              "https://images.unsplash.com/photo-1562259929-b4e1fd3aef09?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmVwYWlyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
          isMostPopular: false),
      Product(
          title: "Phone Reparing",
          id: "2",
          category: "Reparing",
          description: text,
          imageUrl:
              "https://images.unsplash.com/photo-1550041473-d296a3a8a18a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHJlcGFpcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
          isMostPopular: true),
      Product(
          title: "Home Painting",
          id: "2",
          category: "Painting",
          description: text,
          imageUrl:
              "https://images.unsplash.com/photo-1595814433015-e6f5ce69614e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG9tZSUyMHBhaW50aW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
          isMostPopular: true),
      Product(
          title: "Food Delivery",
          id: "2",
          category: "Delivery",
          description: text,
          imageUrl:
              "https://plus.unsplash.com/premium_photo-1661766131927-5026561fd0cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZCUyMGRlbGl2ZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
          isMostPopular: true),
    ];
  }

  Future<List<ProductCategoryModel>> fetchCategoryList() async {
    return [
      ProductCategoryModel(
          color: Color(0xffF4C0DE),
          title: "Cleaning",
          iconUrl: Icons.cleaning_services),
      ProductCategoryModel(
          color: Color(0xffCFCBF6),
          title: "Reparing",
          iconUrl: Icons.repartition_outlined),
      ProductCategoryModel(
          color: Color(0xffFCDF4C8),
          title: "Painting",
          iconUrl: Icons.format_paint_outlined),
      ProductCategoryModel(
          color: Color(0xffF8E4C3),
          title: "Delivery",
          iconUrl: Icons.transfer_within_a_station),
    ];
  }
}
