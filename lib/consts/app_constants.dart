import 'package:cut_market_hub_client/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstants {
  static const String imageUrl =
      'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';

  static List<String> bannersImages = [
    AssetsManager.banner1,
    AssetsManager.banner2
  ];

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      id: "Cereal",
      image: AssetsManager.cereal,
      name: "Cereal",
    ),
    CategoriesModel(
      id: "Jams",
      image: AssetsManager.jams,
      name: "Jams",
    ),
    CategoriesModel(
      id: "Detergent",
      image: AssetsManager.detergent,
      name: "Detergent",
    ),
    CategoriesModel(
      id: "Disinfectants",
      image: AssetsManager.disinfectants,
      name: "Disinfectants",
    ),

    // CategoriesModel(
    //   id: "Phones",
    //   image: AssetsManager.mobiles,
    //   name: "Phones",
    // ),
    // CategoriesModel(
    //   id: "Laptops",
    //   image: AssetsManager.pc,
    //   name: "Laptops",
    // ),
    // CategoriesModel(
    //   id: "Electronics",
    //   image: AssetsManager.electronics,
    //   name: "Electronics",
    // ),
    // CategoriesModel(
    //   id: "Watches",
    //   image: AssetsManager.watch,
    //   name: "Watches",
    // ),
    // CategoriesModel(
    //   id: "Clothes",
    //   image: AssetsManager.fashion,
    //   name: "Clothes",
    // ),
    // CategoriesModel(
    //   id: "Shoes",
    //   image: AssetsManager.shoes,
    //   name: "Shoes",
    // ),
    // CategoriesModel(
    //   id: "Books",
    //   image: AssetsManager.book,
    //   name: "Books",
    // ),
    // CategoriesModel(
    //   id: "Cosmetics",
    //   image: AssetsManager.cosmetics,
    //   name: "Cosmetics",
    // ),
  ];
}
