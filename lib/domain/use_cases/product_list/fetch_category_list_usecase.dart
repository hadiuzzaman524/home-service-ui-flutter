import 'package:ar_products_flutter/domain/entities/product_list/category.dart';
import 'package:ar_products_flutter/domain/repositories/product_list/firebase_data_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryListUseCase {
  CategoryListUseCase({required this.fetchFirebaseDataRepo});

  final FetchFirebaseDataRepo fetchFirebaseDataRepo;

  Future<List<ProductCategoryModel>> fetchCategoryList() {
    return fetchFirebaseDataRepo.fetchCategoryList();
  }
}
