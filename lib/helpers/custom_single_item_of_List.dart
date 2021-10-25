import 'package:abc_cash_and_carry/screens/Item_details_addtocard_Screen.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Single Product Create
/// Picture, Price, Name
class CustomProductListViewSingleItems extends StatelessWidget {
  final String imagePaths;
  final double priceText;
  final String nameText;
  // String description;
  final Widget? screen;

  CustomProductListViewSingleItems({
    Key? key,
    required this.imagePaths,
    this.screen,
    required this.priceText,
    required this.nameText,
    // required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 210.0,
        width: 130.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                // decoration: BoxDecoration(
                //     boxShadow: <BoxShadow>[
                //       BoxShadow(
                //           color: Colors.black54,
                //           blurRadius: 15.0,
                //           offset: Offset(3, 3),
                //         spreadRadius: 40.0,
                //       )
                //     ],
                // ),
                height: 150.0,
                width: 130.0,
                // child: Image.asset(
                child: Image.network(
                  imagePaths,
                  fit: BoxFit.scaleDown,
                  // width: double.infinity,
                  width: 130.0,
                  height: 150.0,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
            //   child: Text(
            //     priceText.toString(),
            //     style: ProductPriceStyle,
            //     textAlign: TextAlign.left,
            //   ),
            // ),

            /// Discount Price,
            Padding(
              padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '\$ ', style: ProductPriceStyle),
                    TextSpan(text: "$priceText", style: ProductPriceStyle),
                  ],
                ),
              ),
            ),

            Text(
              nameText,
              style: ProductPriceStyle,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
      onTap: () {
        // _modalBottomSheetMenu(context);
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return screen ??
                  ABCItemDetailsAddToCardScreen(
                    discountPriceText: priceText,
                    productImagePath: [imagePaths, imagePaths, imagePaths],
                    productName: nameText,
                    originalPriceText: priceText,
                    description: '',
                  );
            },
          ),
        );
      },
    );
  }

// /// Modal Bottom Sheet Menu Called
//   void _modalBottomSheetMenu(BuildContext context) {
//     showModalBottomSheet<void>(
//         context: context,
//         enableDrag: true,
//         elevation: 0.0,
//         backgroundColor: Colors.transparent,
//         // shape: RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
//         // ),
//         builder: (context) {
//           return Container(
//             height: MediaQuery.of(context).size.height * 0.8,
//             color: Colors.transparent,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ClipRRect(
//                 borderRadius:
//                     // BorderRadius.only(
//                     //   topLeft: const Radius.circular(10.0),
//                     //   topRight: const Radius.circular(10.0),
//                     // ),
//                     BorderRadius.circular(12.0),
//                 child: Container(
//                   // decoration: BoxDecoration(
//                   // ),
//                   child: ABCItemDetailsAddToCardScreen(),
//                 ),
//               ),
//             ),
//           );
//         });
//   }

}
