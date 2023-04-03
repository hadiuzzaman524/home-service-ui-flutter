import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_category/cubit.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/cubit.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    context.read<FetchCategoryCubit>().fetchProductCategoryList();
    context.read<FetchProductCubit>().fetchAllProduct();

    return Scaffold(
      body: SafeArea(
        child: _bottomNavIndex == 0
            ? const ProductListScreenBody()
            : Center(
                child: Text(
                  'Future Work $_bottomNavIndex',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.description), label: "Booking"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _bottomNavIndex,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        //other params
      ),
    );
  }
}
