import 'package:ar_products_flutter/injector/injector.dart';
import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_category/cubit.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/cubit.dart';
import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FetchProductCubit>(
          create: (ctx) => injector(),
        ),
        BlocProvider<FetchCategoryCubit>(
          create: (ctx) => injector(),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: context.colors.primaryColor),
          scaffoldBackgroundColor: context.colors.scaffoldBackgroundColor,
          colorScheme: ColorScheme.fromSwatch(
            accentColor: context.colors.primaryColor,
          ),
          textTheme: GoogleFonts.poppinsTextTheme(),
          //  useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
