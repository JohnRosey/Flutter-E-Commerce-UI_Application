import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../model/Product.dart';
import '../../../providers/cartprovider.dart';
import 'body_details.dart';
import 'constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  final CartProvider cartProvider = CartProvider();

  DetailsScreen({
    super.key,
    this.product,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: product!.color,
      appBar: buildAppBar(context),
      body: BodyDetails(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: colorapp,
      elevation: 0,
      title: Text("Ecran de  detaille"),
      centerTitle: true,
      leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      
    );
  }
}
