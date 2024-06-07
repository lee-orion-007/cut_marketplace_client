import 'package:card_swiper/card_swiper.dart';
import 'package:cut_market_hub_client/consts/app_constants.dart';
import 'package:cut_market_hub_client/widgets/products/ctg_rounded_widget.dart';
import 'package:cut_market_hub_client/widgets/products/latest_arrival.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';
import '../services/assets_manager.dart';
import '../widgets/app_name_text.dart';
import '../widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productsProvider = Provider.of<ProductsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.shoppingCart2,
          ),
        ),
        title: const AppNameTextWidget(fontSize: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: size.height * 0.25,
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(50),
                  child: Swiper(
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        AppConstants.bannersImages[index],
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: AppConstants.bannersImages.length,
                    pagination: const SwiperPagination(
                      // alignment: Alignment.center,
                      builder: DotSwiperPaginationBuilder(
                          activeColor: Colors.blueAccent,
                          color: Color.fromARGB(255, 56, 54, 54)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Visibility(
                visible: productsProvider.getProducts.isNotEmpty,
                child: const TitlesTextWidget(label: "Latest arrival"),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Visibility(
                visible: productsProvider.getProducts.isNotEmpty,
                child: SizedBox(
                  height: size.height * 0.2,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productsProvider.getProducts.length < 10
                          ? productsProvider.getProducts.length
                          : 10,
                      itemBuilder: (context, index) {
                        return ChangeNotifierProvider.value(
                            value: productsProvider.getProducts[index],
                            child: const LatestArrivalProductsWidget());
                      }),
                ),
              ),
              const TitlesTextWidget(label: "Categories"),
              const SizedBox(
                height: 15.0,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children:
                    List.generate(AppConstants.categoriesList.length, (index) {
                  return CategoryRoundedWidget(
                    image: AppConstants.categoriesList[index].image,
                    name: AppConstants.categoriesList[index].name,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
