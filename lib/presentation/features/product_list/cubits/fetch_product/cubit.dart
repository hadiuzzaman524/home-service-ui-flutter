import 'package:ar_products_flutter/domain/entities/product_list/products.dart';
import 'package:ar_products_flutter/domain/use_cases/product_list/fetch_all_product_usecase.dart';
import 'package:ar_products_flutter/domain/use_cases/product_list/fetch_category_list_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import 'state.dart';

@injectable
class FetchProductCubit extends Cubit<FetchProductState> {
  FetchProductCubit({
    required this.fetchAllProductUseCase,
  }) : super(FetchProductState());

  final FetchAllProductUseCase fetchAllProductUseCase;

  List<Product> _allProductList = [];
  List<Product> _filteredList = [];

  List<Product> get filteredProduct => _filteredList;

  Future<void> fetchAllProduct({String? category, bool? reset}) async {
    emit(AllProductLoading());

    if (category == null) {
      debugPrint('fetch all product');
      if (reset == null) {
        // Store full list
        _allProductList = await fetchAllProductUseCase.fetchAllProduct();
        _filteredList = _allProductList;
        debugPrint('store all product');
      } else {
        // when reset restore all product
        _filteredList = _allProductList;
      }
    } else {
      debugPrint('Filtered by category');

      _filteredList = _allProductList
          .where(
            (element) =>
                element.category.toUpperCase() == category.toUpperCase(),
          )
          .toList();
    }

    emit(AllProductLoaded(allProductList: filteredProduct));
  }
}
