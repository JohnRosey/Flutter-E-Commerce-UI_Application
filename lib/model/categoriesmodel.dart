class CategoriesModel {
  final String? image, title;
  final int? id;
  CategoriesModel({this.id, this.title, this.image});
}

List<CategoriesModel> categ = [
  CategoriesModel(id: 1, title: "Les denree alimentaires", image: "assets/images/riz.png"),
  CategoriesModel(
      id: 2, title: "les elements de construction", image: "assets/images/accessories.png"),
  CategoriesModel(id: 3, title: "Electronique", image: "assets/images/phone_se.png"),
  //CategoriesModel(id: 4, title: "Les produits de jardinage", image: "assets/images/iphones.png"),
];
