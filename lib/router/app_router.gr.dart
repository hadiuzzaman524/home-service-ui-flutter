// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    ProductListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProductListScreen(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ProductDetailsScreen(
          key: args.key,
          productId: args.productId,
          title: args.title,
          imageUrl: args.imageUrl,
          subTitle: args.subTitle,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          ProductListRoute.name,
          path: '/',
        ),
        RouteConfig(
          ProductDetailsRoute.name,
          path: '/product-details-screen',
        ),
      ];
}

/// generated route for
/// [ProductListScreen]
class ProductListRoute extends PageRouteInfo<void> {
  const ProductListRoute()
      : super(
          ProductListRoute.name,
          path: '/',
        );

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [ProductDetailsScreen]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    Key? key,
    required String productId,
    required String title,
    required String imageUrl,
    required String subTitle,
  }) : super(
          ProductDetailsRoute.name,
          path: '/product-details-screen',
          args: ProductDetailsRouteArgs(
            key: key,
            productId: productId,
            title: title,
            imageUrl: imageUrl,
            subTitle: subTitle,
          ),
        );

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.productId,
    required this.title,
    required this.imageUrl,
    required this.subTitle,
  });

  final Key? key;

  final String productId;

  final String title;

  final String imageUrl;

  final String subTitle;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId, title: $title, imageUrl: $imageUrl, subTitle: $subTitle}';
  }
}
