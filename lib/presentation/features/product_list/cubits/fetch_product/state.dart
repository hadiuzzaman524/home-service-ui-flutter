import 'package:ar_products_flutter/domain/entities/product_list/products.dart';

class FetchProductState {
  FetchProductState();
}

class AllProductLoading extends FetchProductState {
  AllProductLoading();
}

class AllProductLoaded extends FetchProductState {
  AllProductLoaded({required this.allProductList});

  final List<Product> allProductList;
}

