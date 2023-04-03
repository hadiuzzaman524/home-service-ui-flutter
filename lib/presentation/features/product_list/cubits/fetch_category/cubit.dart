import 'package:ar_products_flutter/domain/use_cases/product_list/fetch_category_list_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'state.dart';

@injectable
class FetchCategoryCubit extends Cubit<FetchCategoryState> {
  FetchCategoryCubit(this.categoryListUseCase) : super(FetchCategoryState());
  final CategoryListUseCase categoryListUseCase;

  Future<void> fetchProductCategoryList() async {
    emit(ProductCategoryLoading());
    final list = await categoryListUseCase.fetchCategoryList();
    emit(ProductCategoryLoaded(productCategoryList: list));
  }
}
