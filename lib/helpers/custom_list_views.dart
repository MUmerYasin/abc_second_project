import 'package:abc_cash_and_carry/models/single_product_model.dart';
import 'package:abc_cash_and_carry/screens/Item_details_addtocard_Screen.dart';
import 'package:abc_cash_and_carry/services/api_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_single_item_of_List.dart';

/// Feature Products Show In Home Page
class FeatureProductsShowInHomePage extends StatefulWidget {
  const FeatureProductsShowInHomePage({Key? key}) : super(key: key);
  @override
  State<FeatureProductsShowInHomePage> createState() =>
      _FeatureProductsShowInHomePageState();
}

class _FeatureProductsShowInHomePageState
    extends State<FeatureProductsShowInHomePage> {
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

  // late Future<SingleProductModel> _singleProductModelForJSON;

  // var _responseAPI;
  // @override
  // void initState(){
  //   _singleProductModelForJSON = SingleProductApiManager().getSingleProduct();
  //    super.initState();
  //  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.symmetric(horizontal: 4.0),
          height: 210.0,
          width: double.infinity,

          child:
              // FutureBuilder(
              //   future: _singleProductModelForJSON, builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              //   if(snapshot.hasData){
              //     return ListView.builder(
              //       itemBuilder: (context, i) {
              //         // var singleProductDetails = snapshot.data!.id;
              //         print(snapshot.data!.id);//products[i]
              //         print(snapshot.data!.image);
              //         print(snapshot.data!.price);
              //         print("ListView builder");
              //         return Padding(
              //           padding: const EdgeInsets.symmetric(horizontal: 4.0),
              //           child: CustomProductListViewSingleItems(
              //             imagePaths: snapshot.data!.image,
              //             priceText: snapshot.data!.price,
              //             nameText: snapshot.data!.title,
              //             screen: ABCItemDetailsAddToCardScreen(
              //               productName: snapshot.data!.title,
              //               originalPriceText: snapshot.data!.price+2,
              //               discountPriceText: snapshot.data!.price,
              //               productImagePath: [
              //                 snapshot.data!.image,
              //                 snapshot.data!.image,
              //                 snapshot.data!.image
              //               ], description: snapshot.data!.description,
              //             ),
              //           ),
              //         );
              //       },
              //       itemCount: snapshot.data!.id,
              //       scrollDirection: Axis.horizontal,
              //       shrinkWrap: true,
              //       physics: ClampingScrollPhysics(),
              //     );
              //   }
              //   else
              //   {
              //     return Center(child: CircularProgressIndicator());
              //   }
              // },
              // ),

              ListView.builder(
            itemBuilder: (context, i) {
              // var singleProductDetails = snapshot.data!.id;
              print(products[i].id); //products[i]
              print(products[i].image);
              print(products[i].price);
              print("ListView builder");
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: CustomProductListViewSingleItems(
                  imagePaths: products[i].image,
                  priceText: products[i].price,
                  nameText: products[i].title,
                  screen: ABCItemDetailsAddToCardScreen(
                    productName: products[i].title,
                    originalPriceText: products[i].price + 2,
                    discountPriceText: products[i].price,
                    productImagePath: [
                      products[i].image,
                      products[i].image,
                      products[i].image
                    ],
                    description: products[i].description,
                  ),
                ),
              );
            },
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          ),

          // child: ListView.builder(
          //     itemBuilder: (context, i) {
          //       return Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 4.0),
          //         child: CustomProductListViewSingleItems(
          //           imagePaths: imgListProductsImage[i],
          //           priceText: listOfDiscountProductsPrice[i],
          //           nameText: listProductName[i],
          //           screen: ABCItemDetailsAddToCardScreen(
          //             productName: listProductName[i],
          //             originalPriceText: listOfOriginalProductsPrice[i],
          //             discountPriceText: listOfDiscountProductsPrice[i],
          //             productImagePath: [
          //               imgListProductsImage[i],
          //               imgListProductsImage[i],
          //               imgListProductsImage[i]
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //     itemCount: listProductName.length,
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     physics: ClampingScrollPhysics(),
          //   ),
        ),
      ],
    );
  }
}
