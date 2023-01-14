import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/homeapp/home_screen.dart';
import 'package:shop_app/screens/homeapp/navscreens/account.dart';
import 'package:shop_app/screens/homeapp/navscreens/cart.dart';
import 'package:shop_app/screens/homeapp/navscreens/storedetails.dart';

import '../screens/details/components/constants.dart';
import '../screens/homeapp/homebody.dart';

class NavbarProvider with ChangeNotifier {
  List<NavbarDTO> items = [
    NavbarDTO(label: "home", widget: Body(), iconData: Icons.home_outlined),
    NavbarDTO(
      label: "panier",
      widget: Cart(),
      iconData: Icons.shopping_cart_outlined,
    ),
    NavbarDTO(label: "Compte", widget: Account(), iconData: Icons.person),
    NavbarDTO(
      label: "Detail",
      widget: StoreDetails(),
      iconData: Icons.question_mark,
    ),
  ];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

 
}

class NavbarDTO {
  Widget? widget;
  String? label;
  IconData? iconData;

  NavbarDTO({this.widget, this.label, this.iconData});
}
