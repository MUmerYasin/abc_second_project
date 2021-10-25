import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_drawer.dart';
import 'package:abc_cash_and_carry/utils/colors/custom_colors.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';

class ABCItemDetailsScreen extends StatefulWidget {

  String productName;
  // List<String> productImagePath;
  String productImagePath;
  double originalPriceText;
  double discountPriceText;

  ABCItemDetailsScreen(
      {Key? key,
      required this.productName,
      required this.originalPriceText,
      required this.discountPriceText,
      required this.productImagePath})
      : super(key: key);

  @override
  _ABCItemDetailsScreenState createState() => _ABCItemDetailsScreenState();
}

class _ABCItemDetailsScreenState extends State<ABCItemDetailsScreen> {
  int selected = 1;
  bool sizeVisible = true;
  bool colorVisible = false;

  double priceText = 30.0;
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
      // appBar: CustomAppBarBackAndNotificationButtons(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        widget.productImagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///Product Name
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.50,
                          child: Text(
                            widget.productName,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            softWrap: true,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        // ListView(
                        //
                        // ),

                        /// Discount Price,
                        RichText(
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\$ ', style: priceTextStyleCartScreen),
                              TextSpan(
                                  text: widget.discountPriceText.toString(),
                                  style: priceTextStyleCartScreen),
                            ],
                          ),
                        ),

                        /// Original Price,
                        RichText(
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\$ ',
                                  style: originalPriceCartScreenTextStyle),
                              TextSpan(
                                  // text: widget.originalPriceText.toString(),
                                  text: widget.originalPriceText.toString(),
                                  style: originalPriceCartScreenTextStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //
              // Padding(
              //   padding: const EdgeInsets.only(top: 10.0),
              //   child: Divider(
              //     thickness: 1.4,
              //   ),
              // ),
              //
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
              //         return GestureDetector(
              //           child: AnimatedContainer(
              //             duration: Duration(milliseconds: 300),
              //             margin: EdgeInsets.only(right: 10),
              //             decoration: BoxDecoration(
              //               // color: Colors.grey.shade200,
              //               borderRadius: BorderRadius.circular(50),
              //               color: _selectedSize == index
              //                   ? Colors.grey.withOpacity(0.7)
              //                   : Colors.grey.shade200,
              //             ),
              //             width: 50,
              //             height: 50,
              //             child: Center(
              //               child: Text(
              //                 singleProductSize[index],
              //                 style:
              //                     TextStyle(color: Colors.black, fontSize: 15),
              //               ),
              //             ),
              //           ),
              //           onTap: () {
              //             setState(() {
              //               _selectedSize = index;
              //             });
              //           },
              //         );
              //       },
              //     ),
              //   ),
              // ),
              //
              // Divider(
              //   thickness: 1.4,
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
              //       shrinkWrap: true,
              //       itemBuilder: (context, index) {
              //         return GestureDetector(
              //           child: AnimatedContainer(
              //             duration: Duration(milliseconds: 300),
              //             margin: EdgeInsets.only(right: 10),
              //             decoration: BoxDecoration(
              //                 // color: singleProductColors[index],
              //                 color: _selectedColor == index
              //                     ? singleProductColors[index]
              //                     : singleProductColors[index].withOpacity(0.6),
              //                 shape: BoxShape.circle),
              //             width: 50,
              //             height: 50,
              //           ),
              //           onTap: () {
              //             setState(() {
              //               _selectedColor = index;
              //             });
              //           },
              //         );
              //       },
              //     ),
              //   ),
              // ),
              //
              // Divider(
              //   thickness: 1.4,
              // ),
              //
              // /// Colors Text
              // Padding(
              //   padding: const EdgeInsets.only(left: 12.0),
              //   child: Text(
              //     "Quantity",
              //     style: SelectColorAndSizeStyle,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 3.0),
              //   child: Divider(
              //     thickness: 1.4,
              //   ),
              // ),

              /// Counter /// Plus and Minus Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: incrementCartTextColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Container(
                            child: Icon(CupertinoIcons.minus),
                          ),
                          onTap: () {
                            setState(() {
                              if (counter >= 2) {
                                counter--;
                                widget.discountPriceText =
                                    widget.discountPriceText - temp;
                              }
                            });
                          },
                        ),
                        Container(
                          child: Text(
                            "$counter",
                            style: counterTextStyleCartScreen,
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            child: Icon(CupertinoIcons.add),
                          ),
                          onTap: () {
                            setState(() {
                              if (counter >= 1) {
                                counter++;
                                widget.discountPriceText =
                                    widget.discountPriceText + temp;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              /// Button Add To Card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: abc_Color12,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.40, 50.0),
                    ),
                    // backgroundColor: Color(0xFF7168C8),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return ABCCartScreen();
                          },
                        ),
                      );
                    },
                    child: Text("Add To Cart", style: buyNowTextStyle),
                  ),
                ],
              ),

              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
