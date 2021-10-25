import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_drawer.dart';
import 'package:abc_cash_and_carry/helpers/custom_faq.dart';
import 'package:abc_cash_and_carry/utils/strings/multiline_text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrequentlyAskedQuestionsScreen extends StatefulWidget {
  const FrequentlyAskedQuestionsScreen({Key? key}) : super(key: key);

  @override
  _FrequentlyAskedQuestionsScreenState createState() =>
      _FrequentlyAskedQuestionsScreenState();
}

class _FrequentlyAskedQuestionsScreenState
    extends State<FrequentlyAskedQuestionsScreen> {
  IconData iconDataOne = CupertinoIcons.chevron_down;

  bool visibilityOne = false;
  bool selectedOne = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDrawerAndNotificationButtons(),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),

            /// FREQUENTLY ASKED QUESTIONS
            Text(
              frequentlyAskedQuestionsString.toUpperCase(),
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            ///CORONA VIRUS: IS IT SAFE TO BUY GROCERIES ONLINE AND GET DELIVERIES?
            FrequentlyAskedQuestionsGenerated(
              bodyFAQString: yesWeAtABCDiscountHaveTakenStringentString,
              headingFAQString: coronaVirusIsItSafeToBuyString,
            ),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedOne = !selectedOne;
            //       if(iconDataOne == CupertinoIcons.chevron_down){
            //         iconDataOne = CupertinoIcons.chevron_up;
            //       }
            //       else{
            //         iconDataOne = CupertinoIcons.chevron_down;
            //       }
            //       visibilityOne = !visibilityOne;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: MediaQuery.of(context).size.width*0.8,
            //     // height: selectedOne ? 200.0 : 100.0,
            //     color: Colors.grey.shade300,
            //     // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            //     alignment: selectedOne
            //         ? Alignment.center
            //         : AlignmentDirectional.topCenter,
            //     duration: const Duration(seconds: 2),
            //     curve: Curves.fastOutSlowIn,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               coronaVirusIsItSafeToBuyString.toUpperCase(),
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               softWrap: true,
            //                 textAlign: TextAlign.justify,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 16.0),
            //             child: Icon(
            //               iconDataOne,                          // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
            //               color: Colors.black,
            //               size: 20.0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Visibility(
            //       visible : visibilityOne,
            //     child: AnimatedContainer(
            //       width: MediaQuery.of(context).size.width*0.8,
            //       // height: selectedOne ? 100.0 : 200.0,
            //       color: Colors.grey.shade100,
            //       // color: selectedOne ? Colors.red : Colors.blue,
            //       alignment: selectedOne
            //           ? Alignment.center
            //           : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           yesWeAtABCDiscountHaveTakenStringentString,
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //           ),
            //           softWrap: true,
            //             textAlign: TextAlign.justify,
            //
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height*0.01,
            // ),

            ///whatIsGroceryDeliveryString
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedOne = !selectedOne;
            //       if (iconDataOne == CupertinoIcons.chevron_down) {
            //         iconDataOne = CupertinoIcons.chevron_up;
            //       } else {
            //         iconDataOne = CupertinoIcons.chevron_down;
            //       }
            //       visibilityOne = !visibilityOne;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     // height: selectedOne ? 200.0 : 100.0,
            //     color: Colors.grey.shade300,
            //     // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            //     alignment: selectedOne
            //         ? Alignment.center
            //         : AlignmentDirectional.topCenter,
            //     duration: const Duration(seconds: 2),
            //     curve: Curves.fastOutSlowIn,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               whatIsGroceryDeliveryString.toUpperCase(),
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               softWrap: true,
            //               textAlign: TextAlign.justify,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 16.0),
            //             child: Icon(
            //               iconDataOne,
            //               // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
            //               color: Colors.black,
            //               size: 20.0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Visibility(
            //     visible: visibilityOne,
            //     child: AnimatedContainer(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //       // height: selectedOne ? 100.0 : 200.0,
            //       color: Colors.grey.shade100,
            //       // color: selectedOne ? Colors.red : Colors.blue,
            //       alignment: selectedOne
            //           ? Alignment.center
            //           : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           weRecognizeThatNotEveryoneCanString,
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //           ),
            //           softWrap: true,
            //           textAlign: TextAlign.justify,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),
            FrequentlyAskedQuestionsGenerated(
              headingFAQString: whatIsGroceryDeliveryString,
              bodyFAQString: weRecognizeThatNotEveryoneCanString,
            ),

            ///willYouDeliverToBuildingsString
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedOne = !selectedOne;
            //       if (iconDataOne == CupertinoIcons.chevron_down) {
            //         iconDataOne = CupertinoIcons.chevron_up;
            //       } else {
            //         iconDataOne = CupertinoIcons.chevron_down;
            //       }
            //       visibilityOne = !visibilityOne;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     // height: selectedOne ? 200.0 : 100.0,
            //     color: Colors.grey.shade300,
            //     // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            //     alignment: selectedOne
            //         ? Alignment.center
            //         : AlignmentDirectional.topCenter,
            //     duration: const Duration(seconds: 2),
            //     curve: Curves.fastOutSlowIn,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               willYouDeliverToBuildingsString.toUpperCase(),
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               softWrap: true,
            //               textAlign: TextAlign.justify,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 16.0),
            //             child: Icon(
            //               iconDataOne,
            //               // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
            //               color: Colors.black,
            //               size: 20.0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Visibility(
            //     visible: visibilityOne,
            //     child: AnimatedContainer(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //       // height: selectedOne ? 100.0 : 200.0,
            //       color: Colors.grey.shade100,
            //       // color: selectedOne ? Colors.red : Colors.blue,
            //       alignment: selectedOne
            //           ? Alignment.center
            //           : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           yesWeWillDeliverYourGroceriesToString,
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //           ),
            //           softWrap: true,
            //           textAlign: TextAlign.justify,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),

            FrequentlyAskedQuestionsGenerated(
              headingFAQString: willYouDeliverToBuildingsString,
              bodyFAQString: yesWeWillDeliverYourGroceriesToString,
            ),

            /// whatIsTheGroceryDeliveryFeeString
            FrequentlyAskedQuestionsGenerated(
              headingFAQString: whatIsTheGroceryDeliveryFeeString,
              bodyFAQString: theFeeIsRs100ForProcessingString,
            ),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedOne = !selectedOne;
            //       if (iconDataOne == CupertinoIcons.chevron_down) {
            //         iconDataOne = CupertinoIcons.chevron_up;
            //       } else {
            //         iconDataOne = CupertinoIcons.chevron_down;
            //       }
            //       visibilityOne = !visibilityOne;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     // height: selectedOne ? 200.0 : 100.0,
            //     color: Colors.grey.shade300,
            //     // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            //     alignment: selectedOne
            //         ? Alignment.center
            //         : AlignmentDirectional.topCenter,
            //     duration: const Duration(seconds: 2),
            //     curve: Curves.fastOutSlowIn,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               whatIsTheGroceryDeliveryFeeString.toUpperCase(),
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               softWrap: true,
            //               textAlign: TextAlign.justify,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 16.0),
            //             child: Icon(
            //               iconDataOne,
            //               // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
            //               color: Colors.black,
            //               size: 20.0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Visibility(
            //     visible: visibilityOne,
            //     child: AnimatedContainer(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //       // height: selectedOne ? 100.0 : 200.0,
            //       color: Colors.grey.shade100,
            //       // color: selectedOne ? Colors.red : Colors.blue,
            //       alignment: selectedOne
            //           ? Alignment.center
            //           : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           theFeeIsRs100ForProcessingString,
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //           ),
            //           softWrap: true,
            //           textAlign: TextAlign.justify,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),

            /// isThereAMinimumOrderAmountString
            FrequentlyAskedQuestionsGenerated(
              headingFAQString: isThereAMinimumOrderAmountString,
              bodyFAQString: yesTheMinimumOrderAmountIsRs50000BeforeTaxString,
            ),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedOne = !selectedOne;
            //       if (iconDataOne == CupertinoIcons.chevron_down) {
            //         iconDataOne = CupertinoIcons.chevron_up;
            //       } else {
            //         iconDataOne = CupertinoIcons.chevron_down;
            //       }
            //       visibilityOne = !visibilityOne;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     // height: selectedOne ? 200.0 : 100.0,
            //     color: Colors.grey.shade300,
            //     // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            //     alignment: selectedOne
            //         ? Alignment.center
            //         : AlignmentDirectional.topCenter,
            //     duration: const Duration(seconds: 2),
            //     curve: Curves.fastOutSlowIn,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               isThereAMinimumOrderAmountString.toUpperCase(),
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               softWrap: true,
            //               textAlign: TextAlign.justify,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 16.0),
            //             child: Icon(
            //               iconDataOne,
            //               // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
            //               color: Colors.black,
            //               size: 20.0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Visibility(
            //     visible: visibilityOne,
            //     child: AnimatedContainer(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //       // height: selectedOne ? 100.0 : 200.0,
            //       color: Colors.grey.shade100,
            //       // color: selectedOne ? Colors.red : Colors.blue,
            //       alignment: selectedOne
            //           ? Alignment.center
            //           : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           yesTheMinimumOrderAmountIsRs50000BeforeTaxString,
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //           ),
            //           softWrap: true,
            //           textAlign: TextAlign.justify,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),

            /// whatIsExpressDeliveryString
            FrequentlyAskedQuestionsGenerated(
              headingFAQString: whatIsExpressDeliveryString,
              bodyFAQString: weDoProvideSameDayDeliveryForOrdersString,
            ),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedOne = !selectedOne;
            //       if (iconDataOne == CupertinoIcons.chevron_down) {
            //         iconDataOne = CupertinoIcons.chevron_up;
            //       } else {
            //         iconDataOne = CupertinoIcons.chevron_down;
            //       }
            //       visibilityOne = !visibilityOne;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     // height: selectedOne ? 200.0 : 100.0,
            //     color: Colors.grey.shade300,
            //     // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            //     alignment: selectedOne
            //         ? Alignment.center
            //         : AlignmentDirectional.topCenter,
            //     duration: const Duration(seconds: 2),
            //     curve: Curves.fastOutSlowIn,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               whatIsExpressDeliveryString.toUpperCase(),
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               softWrap: true,
            //               textAlign: TextAlign.justify,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 16.0),
            //             child: Icon(
            //               iconDataOne,
            //               // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
            //               color: Colors.black,
            //               size: 20.0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Visibility(
            //     visible: visibilityOne,
            //     child: AnimatedContainer(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //       // height: selectedOne ? 100.0 : 200.0,
            //       color: Colors.grey.shade100,
            //       // color: selectedOne ? Colors.red : Colors.blue,
            //       alignment: selectedOne
            //           ? Alignment.center
            //           : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           weDoProvideSameDayDeliveryForOrdersString,
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //           ),
            //           softWrap: true,
            //           textAlign: TextAlign.justify,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),

            /// isThereAMinimumOrderAmountForString
            FrequentlyAskedQuestionsGenerated(
              headingFAQString: isThereAMinimumOrderAmountForString,
              bodyFAQString: yesTheMinimumOrderAmountIsRs50000BeforeTaxString,
            ),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedOne = !selectedOne;
            //       if (iconDataOne == CupertinoIcons.chevron_down) {
            //         iconDataOne = CupertinoIcons.chevron_up;
            //       } else {
            //         iconDataOne = CupertinoIcons.chevron_down;
            //       }
            //       visibilityOne = !visibilityOne;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     // height: selectedOne ? 200.0 : 100.0,
            //     color: Colors.grey.shade300,
            //     // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            //     alignment: selectedOne
            //         ? Alignment.center
            //         : AlignmentDirectional.topCenter,
            //     duration: const Duration(seconds: 2),
            //     curve: Curves.fastOutSlowIn,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               isThereAMinimumOrderAmountForString.toUpperCase(),
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               softWrap: true,
            //               textAlign: TextAlign.justify,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 16.0),
            //             child: Icon(
            //               iconDataOne,
            //               // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
            //               color: Colors.black,
            //               size: 20.0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Visibility(
            //     visible: visibilityOne,
            //     child: AnimatedContainer(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //       // height: selectedOne ? 100.0 : 200.0,
            //       color: Colors.grey.shade100,
            //       // color: selectedOne ? Colors.red : Colors.blue,
            //       alignment: selectedOne
            //           ? Alignment.center
            //           : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           yesTheMinimumOrderAmountIsRs50000BeforeTaxString,
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //           ),
            //           softWrap: true,
            //           textAlign: TextAlign.justify,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),

            /// whatIsYourDeliveryCoverageAreaString
            FrequentlyAskedQuestionsGenerated(
              headingFAQString: whatIsYourDeliveryCoverageAreaString,
              bodyFAQString: weCurrentlyDeliverInUSAONLYString,
            ),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedOne = !selectedOne;
            //       if (iconDataOne == CupertinoIcons.chevron_down) {
            //         iconDataOne = CupertinoIcons.chevron_up;
            //       } else {
            //         iconDataOne = CupertinoIcons.chevron_down;
            //       }
            //       visibilityOne = !visibilityOne;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     // height: selectedOne ? 200.0 : 100.0,
            //     color: Colors.grey.shade300,
            //     // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            //     alignment: selectedOne
            //         ? Alignment.center
            //         : AlignmentDirectional.topCenter,
            //     duration: const Duration(seconds: 2),
            //     curve: Curves.fastOutSlowIn,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               whatIsYourDeliveryCoverageAreaString.toUpperCase(),
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               softWrap: true,
            //               textAlign: TextAlign.justify,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 16.0),
            //             child: Icon(
            //               iconDataOne,
            //               // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
            //               color: Colors.black,
            //               size: 20.0,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Visibility(
            //     visible: visibilityOne,
            //     child: AnimatedContainer(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //       // height: selectedOne ? 100.0 : 200.0,
            //       color: Colors.grey.shade100,
            //       // color: selectedOne ? Colors.red : Colors.blue,
            //       alignment: selectedOne
            //           ? Alignment.center
            //           : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           weCurrentlyDeliverInUSAONLYString,
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //           ),
            //           softWrap: true,
            //           textAlign: TextAlign.justify,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            // SizedBox(
            // // height:MediaQuery.of(context).size.height*0.3,
            //   height: 500,
            //   width: 500,
            //   child: Expanded(
            //     child: ExpansionTile(
            //       title: Text('ExpansionTile 1'),
            //       subtitle: Text('Trailing expansion arrow icon'),
            //       children: <Widget>[
            //         Text('This is tile number 1'),
            //       ],
            //     ),
            //   ),
            // ),
            // ExpansionTile(
            //   title: const Text('ExpansionTile 2'),
            //   subtitle: const Text('Custom expansion arrow icon'),
            //   trailing: Icon(
            //     _customTileExpanded
            //         ? Icons.arrow_drop_down_circle
            //         : Icons.arrow_drop_down,
            //   ),
            //   children: const <Widget>[
            //     ListTile(title: Text('This is tile number 2')),
            //   ],
            //   onExpansionChanged: (bool expanded) {
            //     setState(() => _customTileExpanded = expanded);
            //   },
            // ),
            // const ExpansionTile(
            //   title: Text('ExpansionTile 3'),
            //   subtitle: Text('Leading expansion arrow icon'),
            //   controlAffinity: ListTileControlAffinity.leading,
            //   children: <Widget>[
            //     ListTile(title: Text('This is tile number 3')),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
