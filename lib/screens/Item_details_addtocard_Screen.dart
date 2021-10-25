import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_carousel_slider.dart';
import 'package:abc_cash_and_carry/helpers/custom_drawer.dart';
import 'package:abc_cash_and_carry/utils/colors/custom_colors.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Item_details_Screen.dart';
import 'cart_screen.dart';

class ABCItemDetailsAddToCardScreen extends StatefulWidget {
  final String productName;
  final List<String> productImagePath;
  final double originalPriceText;
  final double discountPriceText;
  final String description;

  ABCItemDetailsAddToCardScreen({
    Key? key,
    required this.productName,
    required this.originalPriceText,
    required this.discountPriceText,
    required this.productImagePath,
    required this.description,
  }) : super(key: key);

  @override
  _ABCItemDetailsAddToCardScreenState createState() =>
      _ABCItemDetailsAddToCardScreenState();
}

class _ABCItemDetailsAddToCardScreenState
    extends State<ABCItemDetailsAddToCardScreen> {
  // List<String> imgListProductsImage = [widget.productImagePath,widget.productImagePath,widget.productImagePath]

  int counter = 1;
  late double temp;

  // int _selectedColor = 0;
  // int _selectedSize = 0;

  @override
  void initState() {
    super.initState();
    temp = widget.discountPriceText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      appBar: CustomBackScreenButton(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),

            /// Carousel With Indicator
            Container(
              width: MediaQuery.of(context).size.width * 0.85,

              // padding: EdgeInsets.symmetric(vertical: 65.0),
              child: HomePageCarouselWithIndicator(
                // imgList: imgListProductDetails,
                imgList: widget.productImagePath,
                heightOfSlider: 150,
              ),
            ),

            /// Product Name
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(widget.productName,
                          style: productItemNameTextStyle)),
                ],
              ),
            ),

            /// DiscountPrice, OriginalPrice
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Text(aBC_StringDiscountPrice, style: discountPriceTextStyle),
                  /// Discount Price,
                  RichText(
                    text: TextSpan(
                      // style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: '\$ ', style: discountPriceTextStyle),
                        TextSpan(
                            text: widget.discountPriceText.toString(),
                            style: discountPriceTextStyle),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),

                  // Text(aBC_StringOriginalPrice, style: originalPriceTextStyle),
                  /// Original Price,
                  RichText(
                    text: TextSpan(
                      // style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: '\$ ', style: originalPriceTextStyle),
                        TextSpan(
                            // text: widget.originalPriceText.toString(),
                            text: widget.originalPriceText.toString(),
                            style: originalPriceTextStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Divider(),

            // /// TotalReviews, VeryGood(Title), Reviews
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 20.0, top: 5.0, bottom: 5.0, right: 20.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           Container(
            //             padding: EdgeInsets.symmetric(
            //               vertical: 8.0,
            //               horizontal: 16.0,
            //             ),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(5.0),
            //               color: SliderBlueTextColor,
            //             ),
            //             child: Text("Total Reviews",
            //                 style: ReviewWhiteTextStyle),
            //           ),
            //           SizedBox(
            //             width: 16.0,
            //           ),
            //           Text("Very Good", style: productReviewTextStyle),
            //         ],
            //       ),
            //       Text("Reviews", style: productTotalReviewTextStyle),
            //     ],
            //   ),
            // ),
            // Divider(),

            ///Description
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                bottom: 5.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child:
                          Text("Description", style: productItemNameTextStyle)),
                ],
              ),
            ),

            ///Description
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, bottom: 5.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      widget.description,
                      style: productDescriptionDetailsTextStyle,
                      // maxLines: 5,
                      // overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify,
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Divider(
                thickness: 1.4,
              ),
            ),

            // /// Size Text
            // Padding(
            //   padding: const EdgeInsets.only(left: 8.0),
            //   child: Text(
            //     "Size",
            //     style: SelectColorAndSizeStyle,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 3.0),
            //   child: Divider(
            //     thickness: 1.4,
            //   ),
            // ),
            //
            // ///Size ListView builder
            // Padding(
            //   padding: const EdgeInsets.only(
            //     left: 20.0,
            //   ),
            //   child: Container(
            //     width: double.infinity,
            //     height: 50,
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: singleProductSize.length,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           margin: EdgeInsets.only(right: 10),
            //           decoration: BoxDecoration(
            //               color: Colors.grey.shade200,
            //               borderRadius: BorderRadius.circular(50)),
            //           width: 50,
            //           height: 50,
            //           child: Center(
            //             child: Text(
            //               singleProductSize[index],
            //               style: TextStyle(color: Colors.black, fontSize: 15),
            //             ),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 10.0),
            //   child: Divider(
            //     thickness: 1.4,
            //   ),
            // ),
            //
            // /// Colors Text
            // Padding(
            //   padding: const EdgeInsets.only(left: 12.0),
            //   child: Text(
            //     "Color",
            //     style: SelectColorAndSizeStyle,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 3.0),
            //   child: Divider(
            //     thickness: 1.4,
            //   ),
            // ),
            //
            // ///Colors ListView builder
            // Padding(
            //   padding: const EdgeInsets.only(left: 20.0),
            //   child: SizedBox(
            //     height: 50,
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: singleProductColors.length,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           margin: EdgeInsets.only(right: 10),
            //           decoration: BoxDecoration(
            //               color: singleProductColors[index],
            //               shape: BoxShape.circle),
            //           width: 50,
            //           height: 50,
            //         );
            //       },
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30,
            // ),

            /// Button Add To Card  and Buy Now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ButtonAddToCardTextColor,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.40, 50.0),
                  ),
                  // backgroundColor: Color(0xFF7168C8),
                  onPressed: () {
                    _modalBottomSheetMenu(context);

                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute(
                    //     builder: (context) {
                    //       return ABCCartScreen();
                    //     },
                    //   ),
                    // );
                  },
                  child: Text("Add To Cart", style: addToCartTextStyle),
                ),
                SizedBox(
                  width: 16.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: abc_Color12,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.40, 50.0),
                  ),
                  // backgroundColor: Color(0xFF7168C8),
                  onPressed: () {
                    // _modalBottomSheetMenu(context);
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return ABCCartScreen();
                        },
                      ),
                    );
                  },
                  child: Text("Buy Now", style: buyNowTextStyle),
                ),
              ],
            ),

            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  /// Modal Bottom Sheet Menu Called
  void _modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        isDismissible: true,
        elevation: 0.0,
        enableDrag: true,
        context: context,
        backgroundColor: Colors.transparent,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        // ),
        builder: (context) {
          return Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius:
                    // BorderRadius.only(
                    //   topLeft: const Radius.circular(10.0),
                    //   topRight: const Radius.circular(10.0),
                    // ),
                    BorderRadius.circular(12.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  // height: 600,
                  // decoration: BoxDecoration(
                  // ),
                  child: ABCItemDetailsScreen(
                    productName: widget.productName,
                    originalPriceText: widget.originalPriceText,
                    discountPriceText: widget.discountPriceText,
                    productImagePath: widget.productImagePath[0],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
