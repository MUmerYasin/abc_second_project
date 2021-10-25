import 'package:abc_cash_and_carry/helpers/custom_about_us_header_list.dart';
import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_drawer.dart';
import 'package:abc_cash_and_carry/helpers/custom_list_views.dart';
import 'package:abc_cash_and_carry/utils/strings/multiline_text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreen extends StatefulWidget {
  AboutUsScreen({
    Key? key,
  }) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDrawerAndNotificationButtons(),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///About Us, header list
            AboutUsHeaderList(
              colorsChange: true,
              iconForFAQ: CupertinoIcons.arrow_2_circlepath,
              textForFAQ: days30ReplacementString,
            ),
            AboutUsHeaderList(
              colorsChange: false,
              iconForFAQ: CupertinoIcons.gift_fill,
              textForFAQ: giftCardString,
            ),
            AboutUsHeaderList(
              colorsChange: true,
              iconForFAQ: CupertinoIcons.lock_fill,
              textForFAQ: securePaymentsString,
            ),
            AboutUsHeaderList(
              colorsChange: false,
              iconForFAQ: Icons.local_shipping_sharp,
              // iconForFAQ:
              textForFAQ: freeShippingString,
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            /// Title Smart Brand
            Align(
              alignment: Alignment.center,
              // child: Text(
              //   smartBrandString,
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 20,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'S',
                      style: GoogleFonts.elsieSwashCaps(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFf0076be),
                        fontSize: 30,
                      ),

                      // TextStyle(
                      //   fontWeight: FontWeight.bold,
                      //   color: Color(0XFf0076be),
                      //   fontSize: 30,
                      //   fontFamily: 'elsieSwashCaps',
                      // ),
                    ),
                    TextSpan(
                      text: smartBrandString,
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            /// Featured Product

            FeatureProductsShowInHomePage(),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
