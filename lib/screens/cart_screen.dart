import 'package:abc_cash_and_carry/helpers/custom_drawer.dart';
import 'package:abc_cash_and_carry/utils/colors/custom_colors.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ABCCartScreen extends StatefulWidget {
  const ABCCartScreen({Key? key}) : super(key: key);

  @override
  _ABCCartScreenState createState() => _ABCCartScreenState();
}

class _ABCCartScreenState extends State<ABCCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      appBar: null,
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
              ///screen Title Cart
              Text("Cart", style: loginStyle),

              /// All Add to Cart Products Show
              // AddToCartProductsShow(),

              SizedBox(
                height: 20.0,
              ),

              /// Continue Button
              // Container(
              //   margin: EdgeInsets.only(top: 10, bottom: 30),
              //   child: Center(
              //     child: MainCustomButton(
              //       child: "Continue",
              //       onPressed: () {
              //         setState(() {
              //           // if( loginKey.currentState!.validate()){
              //           Navigator.push(
              //             context,
              //             CupertinoPageRoute(
              //                 builder: (context) => ABCAddressScreen()),
              //           );
              //           // }
              //         });
              //       },
              //     ),
              //   ),
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
