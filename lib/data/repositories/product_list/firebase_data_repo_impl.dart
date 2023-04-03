import 'package:ar_products_flutter/data/data_source/product_list/remote_data_source.dart';
import 'package:ar_products_flutter/domain/entities/product_list/category.dart';
import 'package:ar_products_flutter/domain/entities/product_list/products.dart';
import 'package:ar_products_flutter/domain/repositories/product_list/firebase_data_repo.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/product_category.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FetchFirebaseDataRepo)
class FirebaseDataRepoImplementation implements FetchFirebaseDataRepo {
  FirebaseDataRepoImplementation({required this.remoteDataSource});

  final FirebaseRemoteDataSource remoteDataSource;

  @override
  Future<List<Product>> fetchAllProducts() async {
    return remoteDataSource.fetchAllProducts();
  }

  @override
  Future<List<ProductCategoryModel>> fetchCategoryList() async {
    return remoteDataSource.fetchCategoryList();
  }
}
