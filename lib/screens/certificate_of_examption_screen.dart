import 'dart:typed_data';

import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_buttons.dart';
import 'package:abc_cash_and_carry/helpers/custom_check_box.dart';
import 'package:abc_cash_and_carry/helpers/custom_checkbox_textfield.dart';
import 'package:abc_cash_and_carry/helpers/custom_states_with_two_textfield.dart';
import 'package:abc_cash_and_carry/helpers/custom_text_field.dart';
import 'package:abc_cash_and_carry/utils/colors/custom_colors.dart';
import 'package:abc_cash_and_carry/utils/strings/button_names_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/check_box_name_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/listview_builder_string.dart';
import 'package:abc_cash_and_carry/utils/strings/multiline_text_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/text_fields_name_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signature/signature.dart';

import 'home_screen.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;

class CertificateOfExemption extends StatefulWidget {
  const CertificateOfExemption({Key? key}) : super(key: key);

  @override
  _CertificateOfExemptionState createState() => _CertificateOfExemptionState();
}

class _CertificateOfExemptionState extends State<CertificateOfExemption> {
  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 1,
    penColor: Colors.black,
    exportBackgroundColor: Colors.grey.shade300,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );

  bool checkIfYouAreAttachingTheMultiStateBool = false;
  bool checkIfThisCertificateIsForASingleBool = false;
  bool checkSubmit = false;
  late CustomCheckBox obj;

  // String? customerTypeDropDownValue = 'Select';
  // String? customerStateDropDownValue = 'Select';
  // String? licenseStateDropDownValue = 'Select';

  // TextEditingController _fullNameTextFieldController = TextEditingController();
  // TextEditingController _zipTextFieldController = TextEditingController();

  // FocusNode _fullNameTextFieldFocusNode = FocusNode();
  // FocusNode _zipTextFieldFocusNode = FocusNode();

  @override
  void initState() {
    _signatureController.addListener(() => print('Value changed'));
    super.initState();
  }

  @override
  void dispose() {
    // _fullNameTextFieldController.dispose();
    // _zipTextFieldController.dispose();
    //
    // _fullNameTextFieldFocusNode.dispose();
    // _zipTextFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: WhiteColor,
        appBar: CustomBackScreenButton(),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  // height: MediaQuery.of(context).size.width * 0.87,
                  //padding: const EdgeInsets.only(top: 16.0,bottom: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///Certificate of Exemption
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(16),
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: StreamlinedSalesAndUseTaxAgreementString,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: certificateOfExemptionString,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  // height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///This is a multi-state form.
                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: thisIsAMultiStateFormString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(text: '\n\n'),
                            TextSpan(
                              text: thePurchaserWillBeString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///1. check If You Are Attaching The MultiState
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                              value: checkIfYouAreAttachingTheMultiStateBool,
                              onChanged: (value) {
                                setState(() {
                                  checkIfYouAreAttachingTheMultiStateBool =
                                      value!;
                                });
                              }),
                          Flexible(
                            child: Text(
                              checkIfYouAreAttachingTheMultiStateString,
                              style: TextStyle(),
                            ),
                          ),
                        ],
                      ),

                      // CheckboxListTile(
                      //     dense:true,
                      //   title:  Text(),
                      //   value: checkIfYouAreAttachingTheMultiStateBool,
                      //   onChanged: (bool? value) {
                      //     setState(() {
                      //       checkIfYouAreAttachingTheMultiStateBool = value!;
                      //     });
                      //   },
                      //   controlAffinity: ListTileControlAffinity.leading,
                      //   // secondary: const Icon(Icons.hourglass_empty),
                      // ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.02,
                      ),

                      ///if Not Enter The Two Letter Postal String
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.0,
                            margin: const EdgeInsets.only(right: 12.0),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'EN',
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              textCapitalization: TextCapitalization.characters,
                              // maxLength: 2,
                              // maxLengthEnforcement: MaxLengthEnforcement.enforced,

                              inputFormatters: [
                                new LengthLimitingTextInputFormatter(2),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Text(ifNotEnterTheTwoLetterPostalString,
                                style: TextStyle(),
                                textAlign: TextAlign.justify),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.02,
                      ),

                      /// 2. Check if this certificate is for a single purchase and enter the related invoice/purchase order#
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                              value: checkIfThisCertificateIsForASingleBool,
                              onChanged: (value) {
                                setState(() {
                                  checkIfThisCertificateIsForASingleBool =
                                      value!;
                                });
                              }),
                          Flexible(
                            // flex: 2,
                            fit: FlexFit.loose,
                            child: Text(
                              checkIfThisCertificateIsForASingleString,
                            ),
                          ),
                        ],
                      ),
                      CustomTextFieldsWithUnderLineBorder(
                        // labelText: fullNameString,
                        //   hintText: fullNameHintsString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.02,
                      ),

                      /// Name of Purchaser
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: nameOfPurchaserString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Business Address
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: businessAddressString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// City
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: cityString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// State
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: statesString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Zip Code
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: zipCodeString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Purchaser's Tax ID Number
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: purchasersTaxIDNumberString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// State of Issue
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: stateOfIssueString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Country of Issue
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: countryOfIssueString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// If no Tax ID Number, enter one of the following
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: ifNoTaxIDNumberString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// FEIN
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: FEINString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Driving License Number/State Issued ID Number
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: drivingLicenseNumberString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Country of Issue
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: countryOfIssueString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Name of seller from whom you are purchasing, leasing, or renting
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: nameOfSellerFromWhomYouArePurchasingString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Seller Address
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: sellerAddressString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// City
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: cityString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// State
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: statesString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      /// Zip Code
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: zipCodeString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///4. Type of business. Check the number that describes your business.
                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: typeOfBusinessString,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  checkTheNumberThatDescribesYourBusinessString,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// CheckBox Custom Created
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: typeOfBusinessList.length,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, i) {
                          return CustomCheckBox(
                            checkValue: typeOfBusinessCheckList[i],
                            checkBoxName: typeOfBusinessList[i],
                            indexOfCheckList: i,
                          ); //typeOfBusinessList
                        },
                      ),

                      /// other
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: otherString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///5. Reason for exemption. Check the letter that identifies the reason for the exemption.
                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: reasonForExemptionString,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: checkTheLetterThatIdentifiesTheReasonString,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// Custom Check Box Text Field
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: reasonForExemptionList.length,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, i) {
                          return CustomCheckBoxTextField(
                            checkValue: reasonForExemptionCheckList[i],
                            checkBoxName: reasonForExemptionList[i],
                            indexOfCheckList: i,
                            // controller: _fullNameTextFieldController,
                            // focusNode: _fullNameTextFieldFocusNode,
                            type: TextInputType.text,
                            // width: MediaQuery.of(context).size.width * 0.75,
                            textInputAction: TextInputAction.next,
                          ); //typeOfBusinessList
                        },
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///6. Sign here. I declare that the information on this certificate is correct and complete to the best of my knowledge and belief
                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: signHereString,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  iDeclareThatTheInformationOnThisCertificateString,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Divider(),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///Signature of authorized purchaser
                      Text(signatureOfAuthorizedPurchaserString),

                      ///Signature
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 170,
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            //SIGNATURE CANVAS
                            Signature(
                              controller: _signatureController,
                              height: 100,
                              backgroundColor: Colors.grey.shade200,
                            ),
                            //OK AND CLEAR BUTTONS
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  //SHOW EXPORTED IMAGE IN NEW ROUTE

                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0XffFF5722)),
                                    ),
                                    onPressed: () async {
                                      if (_signatureController.isNotEmpty) {
                                        final Uint8List? data =
                                            await _signatureController
                                                .toPngBytes();
                                        if (data != null) {
                                          await Navigator.of(context).push(
                                            MaterialPageRoute<void>(
                                              builder: (BuildContext context) {
                                                return Scaffold(
                                                  appBar: AppBar(),
                                                  body: Center(
                                                    child: Container(
                                                      color: Colors.white,
                                                      child: Image.memory(data),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        }
                                      }
                                    },
                                    child: Text("View Images"),
                                  ),

                                  //CLEAR CANVAS
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0XffFF5722)),
                                    ),
                                    onPressed: () {
                                      setState(
                                          () => _signatureController.clear());
                                    },
                                    child: Text(clearButtonNameString),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///Certificate of Exemption
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(16),
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: StreamlinedSalesAndUseTaxAgreementString,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: certificateOfExemptionString,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  // height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      /// Name of Purchaser
                      CustomTextFieldsWithUnderLineBorder(
                        labelText: nameOfPurchasersString,
                        obscure: false,
                        // controller: _fullNameTextFieldController,
                        // focusNode: _fullNameTextFieldFocusNode,
                        type: TextInputType.text,
                        // width: MediaQuery.of(context).size.width * 0.75,
                        textInputAction: TextInputAction.next,
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///State Code names,
                      ///Reason For Exemption
                      ///identification Number

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            stateString,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          Expanded(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  reasonForExemptionsString,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.0,
                                    // decoration: TextDecoration.underline,
                                  ),
                                ),
                                Divider(color: Colors.black),

                                ///identification Number
                                Text(
                                  identificationNumberString,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.0,
                                    // decoration: TextDecoration.underline,
                                  ),
                                ),
                                Divider(color: Colors.black),
                              ],
                            ),
                          ),
                        ],
                      ),

                      /// Custom States name With Two TextFields
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: allStateCodeList.length,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, i) {
                          return StatesWithTwoTextFields(
                            statesDataName: allStateCodeList[i],

                            // labelText: nameOfPurchasersString,
                            // controller: _fullNameTextFieldController,
                            // focusNode: _fullNameTextFieldFocusNode,
                            type: TextInputType.text,
                            // width: MediaQuery.of(context).size.width * 0.75,
                            textInputAction: TextInputAction.next,

                            // labelText: nameOfPurchasersString,
                            // controller2: _fullNameTextFieldController,
                            // focusNode2: _fullNameTextFieldFocusNode,
                            type2: TextInputType.text,
                            // width2: MediaQuery.of(context).size.width * 0.75,
                            textInputAction2: TextInputAction.next,
                          ); //typeOfBusinessList
                        },
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///Certificate of Exemption Instructions
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(16),
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: StreamlinedSalesAndUseTaxAgreementString,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: certificateOfExemptionInstructionsString,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  // height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      Text(
                        useThisFormToClaimExemptionString,
                        style: TextStyle(color: Colors.grey),
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: warningToPurchaserString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: youAreResponsibleForEnsuringString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      Text(
                        purchaserInstructionsForCompletingString,
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: "1.  ",
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: somePurchasersMayWishToString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: cautionString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: certificatesCompletedWithAMultiStateString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: ifYouAreNotAttachingTheMultiStateString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: SinglePurchaseExemptionCertificateString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: checkThisBoxIfThisExemptionString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: purchaserInformationString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: completeThePurchaserAndSellerString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: MultiStatePurchasersString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text:
                                  thePurchaserShouldEnterItsHeadquartersString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: typeOfBusinessString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: circleTheNumberThatBestDescribesString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: reasonForExemptionString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: circleTheExemptionThatAppliesString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///Certificate of Exemption Instructions
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(16),
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: StreamlinedSalesAndUseTaxAgreementString,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: certificateOfExemptionContinuedString,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  // height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: multiStatePurchasersString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: attachTheSSUTACertificateOfExemptionString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: cautionString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: theExemptionsListedAreGeneralString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: sellerString,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(text:'\n'),
                            TextSpan(
                              text: youAreRequiredToMaintainProperString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      RichText(
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: allFieldsOnTheExemptionCertificateAreString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: theFullyCompletedExemptionCertificateString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: ifThePurchaserIsClaimingAnEntityBasedString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: youDoNotFraudulentlyFailToCollectString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: youDoNotSolicitCustomersToUnlawfullyString,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(text: '\n'),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),

                      ///byClickingRegisterIAgreeToYourTermsString
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Checkbox(
                                    value: checkSubmit,
                                    onChanged: (value) {
                                      setState(() {
                                        checkSubmit = value!;
                                      });
                                    }),
                                Flexible(
                                  // flex: 2,
                                  fit: FlexFit.loose,
                                  child: Text(
                                    byClickingRegisterIAgreeToYourTermsString,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.04,
                            ),

                            ///Button Submit
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: MyCustomButton(
                                    child: submitButtonNameString,
                                    color: Colors.black,
                                    // buttonColor: Colors.green,
                                    buttonColor: Color(0Xffffc107),
                                    onPressed: () {
                                      setState(
                                        () {
                                          // bool res = _onButtonPressed();
                                          // if (res) {
                                          Navigator.push(
                                            context,
                                            CupertinoPageRoute(
                                              builder: (context) =>
                                                  ABCHomeVersionOneScreen(),
                                            ),
                                          );
                                          // }
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      ///full Name TextField
                      // CustomFields(
                      //   labelText: fullNameString,
                      //   hintText: fullNameHintsString,
                      //   obscure: false,
                      //   // controller: _fullNameTextFieldController,
                      //   // focusNode: _fullNameTextFieldFocusNode,
                      //   type: TextInputType.emailAddress,
                      //   width: MediaQuery.of(context).size.width * 0.75,
                      //   textInputAction: TextInputAction.next,
                      // ),

                      ///Upload Concerned Documents
                      // Padding(
                      //   padding: const EdgeInsets.only(
                      //     top: 10.0,
                      //     bottom: 10.0,
                      //   ),
                      //   child: Text(
                      //     uploadConcernedDocumentsString,
                      //     style: TextStyle(
                      //       decoration: TextDecoration.underline,
                      //       fontWeight: FontWeight.w800,
                      //     ),
                      //     textAlign: TextAlign.left,
                      //   ),
                      // ),
                      //
                      ///Federal Text Form
                      // GestureDetector(
                      //   child: Container(
                      //     // padding: const EdgeInsets.all(14.0),
                      //     width: MediaQuery.of(context).size.width * 0.72,
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       border: Border.all(
                      //         color: Color(0xFFdedede),
                      //       ),
                      //       borderRadius: BorderRadius.circular(6.0),
                      //     ),
                      //
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Padding(
                      //           padding: const EdgeInsets.only(left: 8.0),
                      //           child: Text(federalTextFormString),
                      //         ),
                      //         Container(
                      //           padding: const EdgeInsets.all(14.0),
                      //           decoration: BoxDecoration(
                      //             color: Color(0XFFE9ECEF),
                      //             border: Border(
                      //               left: BorderSide(
                      //                 //                   <--- left side
                      //                 color: Color(0XFFCED4DA),
                      //               ),
                      //             ),
                      //           ),
                      //           child: Text(BrowseString),
                      //         ),
                      //         // ElevatedButton(onPressed: (){}, child: Text(BrowseString),)
                      //       ],
                      //     ),
                      //   ),
                      //   onTap: () async {
                      //     FilePickerResult? result =
                      //     await FilePicker.platform.pickFiles();
                      //
                      //     if (result != null) {
                      //       File file = File(result.files.single.path!);
                      //     } else {
                      //       // User canceled the picker
                      //     }
                      //   },
                      // ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onButtonPressed() {
    // if (_fullNameTextFieldController.text.isEmpty) {
    //   failedSnackBar(context, msg: "Please Enter Full Name");
    //   _fullNameTextFieldFocusNode.requestFocus();
    //   return false;
    // }
    // else if (_zipTextFieldController.text.isEmpty) {
    //   failedSnackBar(context, msg: "Please Enter zip Code");
    //   _zipTextFieldFocusNode.requestFocus();
    //   return false;
    // }
    // else {
    //   return true;
    // }
  }

  bool _validateEmail(String text) {
    if (text.isEmpty) {
      return false;
    }
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text)) {
      return true;
    } else {
      return false;
    }
  }
}
