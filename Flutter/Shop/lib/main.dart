import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './views/products_overview_screen.dart';
import './utils/app_routes.dart';
import './views/products_detail_screen.dart';
import './views/cart_screen.dart';
import './views/orders_screen.dart';

import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Usado para criar o multi providers com ChangeNotifys
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        //home: ProductOverviewScreen(),
        routes: {
          AppRoutes.HOME: (ctx) => ProductOverviewScreen(),
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDedailScreen(),
          AppRoutes.CART: (ctx) => CartScreen(),
          AppRoutes.ORDERS: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
