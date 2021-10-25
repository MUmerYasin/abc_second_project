import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Button Custom Design
class MyCustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String? child;
  final Color? color;
  final Color? buttonColor;

  MyCustomButton({
    this.onPressed,
    this.child,
    this.color,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // primary: color! ? buttonColor : selectSizeTextColor,
          primary: buttonColor,

          // textStyle: TextStyle(
          //   fontFamily: textFontFamilySegoeUI,
          //   fontSize: 18,
          //   color: color! ? ButtonWhiteTextColor : abc_CategoriesListViewBlack,
          //   fontWeight: FontWeight.w500,
          // ),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            child ?? '',
            style: TextStyle(
              // fontFamily: textFontFamilySegoeUI,
              fontSize: 18,
              // color: color! ? ButtonWhiteTextColor : Colors.black,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
