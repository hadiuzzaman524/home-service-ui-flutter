import 'package:ar_products_flutter/domain/entities/product_list/category.dart';

class FetchCategoryState {
  FetchCategoryState();
}

class ProductCategoryLoading extends FetchCategoryState {
  ProductCategoryLoading();
}

class ProductCategoryLoaded extends FetchCategoryState {
  ProductCategoryLoaded({required this.productCategoryList});

  final List<ProductCategoryModel> productCategoryList;
}
