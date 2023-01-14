import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:provider/provider.dart';


import '../../../model/Product.dart';
import '../../../providers/cartprovider.dart';
import '../../mobiles/mobile_body.dart';
import 'constants.dart';

class BodyDetails extends StatelessWidget {
  final Product? product;
  final DenreeBody mobileBody = DenreeBody();

  BodyDetails({
    super.key,
    this.product,
  });
  @override
  Widget build(BuildContext context) {
    final cp = Provider.of<CartProvider>(
      context,
    );
   int state=cp.cart.indexWhere((i) => i.id == product!.id);
    Size sizes = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: sizes.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment:  MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${product!.title}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: colorapp, fontWeight: FontWeight.bold),
              ),
              Text(
                "\$${product!.price}",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: colorapp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: kDefaultPaddin / 2,
              ),
              Expanded(
                  child: Image.asset(
                "${product!.image}",
                fit: BoxFit.fill,
              )),
              SizedBox(
                height: kDefaultPaddin / 2,
              ),
              Center(
                  child: Text(
                "${product!.description}",
                style: TextStyle(color: colorapp, fontSize: 16),
                textAlign: TextAlign.center,
              )),
              Padding(
                  padding: const EdgeInsets.all(kDefaultPaddin / 2),
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                           "tailles",
                          style: TextStyle(color: colorapp, fontSize: 20),
                        ),
                        SizedBox(
                          width: kDefaultPaddin / 2,
                        ),
                        Container(
                          child: Text(
                            "5",
                            style: TextStyle(color: colorapp, fontSize: 20),
                          ),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blue),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.amber),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.red),
                        ),
                      ])),
              Padding(
                  padding: const EdgeInsets.all(kDefaultPaddin / 2),
                  child:state == -1? InkWell(
                      onTap: () {
                        cp.addProduct(product);
                      },
                      child: Ink(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: colorappo,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  color: product!.color!,
                                  blurRadius: 4)
                            ]),
                        child: Center(
                          child: Text(
                          "Faire la commande",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )):Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: colorapp,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  color: product!.color!,
                                  blurRadius: 4)
                            ]),
                        child: Center(
                          child: Text(
                            "Deja dans le panier",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
