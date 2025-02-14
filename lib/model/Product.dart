import 'package:flutter/material.dart';

class Product {
  final String? image, title, description, categories;
  final int? price, id;
  int? qty;
  final Color? color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.categories,
    this.qty,
    this.color,
  });
}

List<Product> products = [
  Product(
      qty: 5,
      id: 1,
      title: "riz",
      price: 15000,
      description: "grains de riz",
      image: "assets/images/riz.png",

      color: const Color.fromARGB(255, 42, 41, 128),
      categories: "denree"),
  Product(
      qty: 1,
      id: 2,
      title: "Mais",
      price: 400,
      categories: "denree",
      description:
          " Grain de maïs  ",
      image: "assets/images/mais.png",
      color: const Color.fromARGB(255, 167, 144, 219)),
  Product(
      qty: 1,
      id: 3,
      title: "Fonio",
      price: 234,
      description: dummyText,
      categories: "denree",
      image: "assets/images/finio.png",
      color: const Color.fromARGB(255, 180, 175, 175)),
  /*Product(
      qty: 1,
      id: 4,
      title: "IPhone 14",
      price: 1120,
      description: dummyText,
      categories: "denree",
      image: "assets/images/iPhone-14.png",
      color: Color.fromARGB(255, 180, 175, 174)),
  Product(
      qty: 1,
      id: 5,
      title: "IPhone 13",
      price: 890,
      categories: "denree",
      description: dummyText,
      image: "assets/images/iphone_13.png",
      color: Color.fromARGB(255, 205, 118, 47)),
  Product(
    qty: 1,
    id: 6,
    title: "IPhone 13 Pro Max",
    price: 1080,
    description: dummyText,
    categories: "mobile device",
    image: "assets/images/iphone_13_pro_max.png",
    color: Color.fromARGB(255, 135, 178, 231),
  ),*/
  Product(
      qty: 1,
      categories: "aaccessories",
      id: 7,
      title: "Airpods Pro Orginal 4",
      price: 180,
      description: dummyText,
      image: "assets/images/airpids_pro.png",
      color: const Color(0xFF3D82AE)),
  Product(
      qty: 1,
      categories: "aaccessoriesmodel",
      id: 8,
      title: "Apple Watch Ultra Series 8 Orginal",
      price: 790,
      description: dummyText,
      image: "assets/images/apple-watch-ultra.png",
      color: const Color.fromARGB(255, 167, 203, 251)),
  Product(
      qty: 1,
      categories: "aaccessories",
      id: 10,
      title: "Freebuds4 Hwawi",
      price: 110,
      description: dummyText,
      image: "assets/images/freebuds4i-black.png",
      color: const Color(0xFF989493)),
  Product(
      qty: 1,
      categories: "aaccessories",
      id: 11,
      title: "Copying Ultra Watch ",
      price: 90,
      description: dummyText,
      image: "assets/images/S8-Ultra-Max-smartwatch.png",
      color: Color(0xFFE6B398)),
  Product(
      qty: 1,
      categories: "aaccessories",
      id: 12,
      title: "Full Cover For IPhone 11 , 12 , 13",
      price: 8,
      description: dummyText,
      image: "assets/images/full_cover_8.png",
      color: Color(0xFFFB7883)),
  Product(
      qty: 1,
      categories: "aaccessories",
      id: 13,
      title: "Mobile screen glass against breakage",
      price: 2,
      description: dummyText,
      image: "assets/images/glass.png",
      color: Color(0xFFAEAEAE)),
  Product(
      qty: 1,
      categories: "maintenance",
      id: 14,
      title: "Flex Cable for IPone 12",
      price: 30,
      description: dummyText,
      image: "assets/images/flex_cable_12.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      qty: 1,
      categories: "maintenance",
      id: 15,
      title: "Battery For IPhone 6 Pluse",
      price: 20,
      description: dummyText,
      image: "assets/images/iPhone-6-Plus-battery.png",
      color: Color.fromARGB(255, 167, 203, 251)),
  Product(
      qty: 1,
      categories: "maintenance",
      id: 16,
      title: "Power Flex Cable For IPhone",
      price: 38,
      description: dummyText,
      image:
          "assets/images/iPhone-6S-Plus-Power-Flex-Cable-with-Repair-Parts.png",
      color: Color(0xFF989493)),
  Product(
      qty: 1,
      categories: "maintenance",
      id: 17,
      title: "Screen Orginal for 11 Pro Max ",
      price: 290,
      description: dummyText,
      image: "assets/images/iPhone-11-Pro-Max-screen.png",
      color: Color(0xFFE6B398)),
  Product(
      qty: 1,
      categories: "maintenance",
      id: 18,
      title: "Full Cover For IPhone 11 , 12 , 13",
      price: 8,
      description: dummyText,
      image: "assets/images/full_cover_8.png",
      color: Color(0xFFFB7883)),
];

String dummyText =
    "Apple is the world's best inventions in the twentieth century";
