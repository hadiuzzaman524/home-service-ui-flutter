import 'package:ar_products_flutter/domain/entities/product_list/products.dart';
import 'package:ar_products_flutter/domain/repositories/product_list/firebase_data_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchAllProductUseCase {
  FetchAllProductUseCase({required this.fetchFirebaseDataRepo});

  final FetchFirebaseDataRepo fetchFirebaseDataRepo;

  Future<List<Product>> fetchAllProduct() {
    return fetchFirebaseDataRepo.fetchAllProducts();
  }
}
