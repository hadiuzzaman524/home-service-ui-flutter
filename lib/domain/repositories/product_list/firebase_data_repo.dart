import 'package:ar_products_flutter/domain/entities/product_list/category.dart';
import 'package:ar_products_flutter/domain/entities/product_list/products.dart';

abstract class FetchFirebaseDataRepo {
  Future<List<Product>> fetchAllProducts();

  Future<List<ProductCategoryModel>> fetchCategoryList();
}
