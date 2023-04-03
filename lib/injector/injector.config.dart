// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ar_products_flutter/data/data_source/product_list/remote_data_source.dart'
    as _i3;
import 'package:ar_products_flutter/data/repositories/product_list/firebase_data_repo_impl.dart'
    as _i5;
import 'package:ar_products_flutter/domain/repositories/product_list/firebase_data_repo.dart'
    as _i4;
import 'package:ar_products_flutter/domain/use_cases/product_list/fetch_all_product_usecase.dart'
    as _i7;
import 'package:ar_products_flutter/domain/use_cases/product_list/fetch_category_list_usecase.dart'
    as _i6;
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_category/cubit.dart'
    as _i8;
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/cubit.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.FirebaseRemoteDataSource>(
      () => _i3.FirebaseRemoteDataSource());
  gh.factory<_i4.FetchFirebaseDataRepo>(() =>
      _i5.FirebaseDataRepoImplementation(
          remoteDataSource: gh<_i3.FirebaseRemoteDataSource>()));
  gh.factory<_i6.CategoryListUseCase>(() => _i6.CategoryListUseCase(
      fetchFirebaseDataRepo: gh<_i4.FetchFirebaseDataRepo>()));
  gh.factory<_i7.FetchAllProductUseCase>(() => _i7.FetchAllProductUseCase(
      fetchFirebaseDataRepo: gh<_i4.FetchFirebaseDataRepo>()));
  gh.factory<_i8.FetchCategoryCubit>(
      () => _i8.FetchCategoryCubit(gh<_i6.CategoryListUseCase>()));
  gh.factory<_i9.FetchProductCubit>(() => _i9.FetchProductCubit(
      fetchAllProductUseCase: gh<_i7.FetchAllProductUseCase>()));
  return getIt;
}
