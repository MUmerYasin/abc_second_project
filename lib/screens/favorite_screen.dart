import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_drawer.dart';
import 'package:abc_cash_and_carry/helpers/custom_single_item_of_List.dart';
import 'package:abc_cash_and_carry/models/single_product_model.dart';
import 'package:abc_cash_and_carry/services/api_manger.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Item_details_addtocard_Screen.dart';

class ABCFavoriteScreen extends StatefulWidget {
  const ABCFavoriteScreen({Key? key}) : super(key: key);

  @override
  _ABCFavoriteScreenState createState() => _ABCFavoriteScreenState();
}

class _ABCFavoriteScreenState extends State<ABCFavoriteScreen> {
  List<SingleProductModel> products = [];

  Future _getProductsList() async {
    products = await SingleProductApiManager().getSingleProduct();
    setState(() {});
  }

  @override
  void initState() {
    _getProductsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDrawerAndNotificationButtons(),
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
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
              ///Favorite Text
              Text("Favorite", style: FeatureTextStyle),
              SizedBox(
                height: 15.0,
              ),

              // ///All Favorite Product Generate
              // FavoriteScreenScrollViewProducts(),

              /// Test AllFavoriteScreenScrollViewProducts
              // AllFavoriteScreenScrollViewProducts(),

              // ListView.builder(
              //   physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount: products.length,
              //     itemBuilder: (context, index){return Container(child: Column(
              //   children: [
              //     Text(products[index].title),
              //     Text(products[index].description),
              //     Text(products[index].price.toString()),
              //   ],
              // ),);}),

              // SizedBox(
              //   // height: 400,
              //   height: MediaQuery.of(context).size.height * 0.7,
              //   child:
              // FutureBuilder(
              //                 future: products,
              //                 builder: (BuildContext context,
              //                     AsyncSnapshot<dynamic> snapshot) {
              //
              //                   if (snapshot.hasData) {
              //                     return
              //

              GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: MediaQuery.of(context).size.width / 500,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                  products.length,
                  (index) {
                    return CustomProductListViewSingleItems(
                      priceText: products[index].price,
                      nameText: products[index].title,
                      imagePaths: products[index].image,
                      screen: ABCItemDetailsAddToCardScreen(
                        productImagePath: [
                          products[index].image,
                          products[index].image,
                          products[index].image
                        ],
                        originalPriceText: products[index].price,
                        productName: products[index].title,
                        discountPriceText: products[index].price,
                        description: products[index].description,
                      ),
                    ); // api provide you different images for any number you are giving
                  },
                ),
              ),

              //   } else {
              //     return Center(child: CircularProgressIndicator());
              //   }
              // }),
              // ),

              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
