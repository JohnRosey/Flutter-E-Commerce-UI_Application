import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:shop_shop/providers/Navbar_provider.dart';
import 'package:shop_shop/providers/cartprovider.dart';
import 'package:shop_shop/providers/changescreen.dart';
import 'package:shop_shop/screens/details/components/constants.dart';
import 'package:shop_shop/screens/homeapp/home_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<NavbarProvider>(create: (_) => NavbarProvider()),
      ChangeNotifierProvider<ChangeScreen>(create: (_) => ChangeScreen()),
      ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      
    );
  }
}
