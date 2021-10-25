import 'package:abc_cash_and_carry/screens/about_us_screen.dart';
import 'package:abc_cash_and_carry/screens/contact_us_screen.dart';
import 'package:abc_cash_and_carry/screens/faq_screen.dart';
import 'package:abc_cash_and_carry/screens/home_screen.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text("Home", style: drawerTextStyle),
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) {
                      return ABCHomeVersionOneScreen();
                    }));
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                GestureDetector(
                  child: Text("About", style: drawerTextStyle),
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) {
                      return AboutUsScreen();
                    }));
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                GestureDetector(
                  child: Text("Faqs", style: drawerTextStyle),
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) {
                      return FrequentlyAskedQuestionsScreen();
                    }));
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                GestureDetector(
                  child: Text("Contact", style: drawerTextStyle),
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) {
                      return ContactUsScreen();
                    }));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: GestureDetector(
                    child: Icon(CupertinoIcons.clear_circled),
                    onTap: () {
                      // Navigator.push(context,
                      //     CupertinoPageRoute(builder: (context) {
                      //       return ABCLoginScreen();
                      //     }));
                      Navigator.pop(context);
                      // gotoScreen(context: context,screen:ABCPaymentScreen());
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
