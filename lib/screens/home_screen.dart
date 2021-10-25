import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_class_titles.dart';
import 'package:abc_cash_and_carry/helpers/custom_drawer.dart';
import 'package:abc_cash_and_carry/helpers/custom_list_views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'favorite_screen.dart';

class ABCHomeVersionOneScreen extends StatefulWidget {
  const ABCHomeVersionOneScreen({Key? key}) : super(key: key);

  @override
  _ABCHomeVersionOneScreenState createState() =>
      _ABCHomeVersionOneScreenState();
}

class _ABCHomeVersionOneScreenState extends State<ABCHomeVersionOneScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBarDrawerAndNotificationButtons(),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 0.0,
          ),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: ClampingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.0,
                ),

                // ///Text Categories and See All
                // CustomSellAllRow(
                //   mainHeadingText: aBC_StringCategories,
                //   screen: ABCCategoriesScreen(),
                // ),
                //
                // /// Categories List of Man, Women, Kids
                // CustomCategoriesListView(),

                ///////-------------------------------------------

                ///Text Featured and See All
                CustomSellAllRow(
                    mainHeadingText: "Featured", screen: ABCFavoriteScreen()),

                /// Featured Product
                // CustomFeaturedListView(),
                FeatureProductsShowInHomePage(),

                ///Text BestSell and See All
                CustomSellAllRow(
                    mainHeadingText: "Best Sell", screen: ABCFavoriteScreen()),

                /// Best Sell Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///////////////////////////////////////////////

                ///Text Flash Sale and See All
                CustomSellAllRow(
                    mainHeadingText: "Flash Sale", screen: ABCFavoriteScreen()),

                /// Flash Sale Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///Text Just For You and See All
                CustomSellAllRow(
                    mainHeadingText: "Just For You",
                    screen: ABCFavoriteScreen()),

                /// Just For You Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///Text Top Rankings and See All
                CustomSellAllRow(
                    mainHeadingText: "Top Rankings",
                    screen: ABCFavoriteScreen()),

                /// Top Reviewed Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///Text Top Reviewed and See All
                CustomSellAllRow(
                    mainHeadingText: "Top Reviewed",
                    screen: ABCFavoriteScreen()),

                ///Top ReviewedProducts Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///Text Our collections and See All
                CustomSellAllRow(
                    mainHeadingText: "Our Collections",
                    screen: ABCFavoriteScreen()),

                /// Our collections Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///aBC_StringFlashSale
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
