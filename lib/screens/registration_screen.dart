import 'dart:io';

import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_buttons.dart';
import 'package:abc_cash_and_carry/helpers/custom_text_field.dart';
import 'package:abc_cash_and_carry/helpers/custom_toaster.dart';
import 'package:abc_cash_and_carry/utils/colors/custom_colors.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:abc_cash_and_carry/utils/strings/button_names_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/listview_builder_string.dart';
import 'package:abc_cash_and_carry/utils/strings/multiline_text_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/screens_titles_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/text_fields_name_strings.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'certificate_of_examption_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String? customerTypeDropDownValue = 'Select';
  String? customerStateDropDownValue = 'Select';
  String? licenseStateDropDownValue = 'Select';

  TextEditingController _fullNameTextFieldController = TextEditingController();
  TextEditingController _nameOfBusinessTextFieldController =
      TextEditingController();
  TextEditingController _emailAddressTextFieldController =
      TextEditingController();
  TextEditingController _phoneTextFieldController = TextEditingController();
  TextEditingController _passwordTextFieldController = TextEditingController();
  TextEditingController _confirmPasswordTextFieldController =
      TextEditingController();
  TextEditingController _mobileTextFieldController = TextEditingController();
  TextEditingController _customerTypeTextFieldController =
      TextEditingController();
  TextEditingController _customerStateTextFieldController =
      TextEditingController();
  TextEditingController _stateResaleTaxIDTextFieldController =
      TextEditingController();
  TextEditingController _driversLicenseNumberTextFieldController =
      TextEditingController();
  TextEditingController _licenseStateTextFieldController =
      TextEditingController();
  TextEditingController _cigaretteLicenseNoTextFieldController =
      TextEditingController();
  TextEditingController _tobaccoLicenseNoTextFieldController =
      TextEditingController();
  TextEditingController _cityTextFieldController = TextEditingController();
  TextEditingController _zipTextFieldController = TextEditingController();

  FocusNode _fullNameTextFieldFocusNode = FocusNode();
  FocusNode _nameOfBusinessTextFieldFocusNode = FocusNode();
  FocusNode _emailAddressTextFieldFocusNode = FocusNode();
  FocusNode _phoneTextFieldFocusNode = FocusNode();
  FocusNode _passwordTextFieldFocusNode = FocusNode();
  FocusNode _confirmPasswordTextFieldFocusNode = FocusNode();
  FocusNode _mobileTextFieldFocusNode = FocusNode();
  FocusNode _customerTypeTextFieldFocusNode = FocusNode();
  FocusNode _customerStateTextFieldFocusNode = FocusNode();
  FocusNode _stateResaleTaxIDTextFieldFocusNode = FocusNode();
  FocusNode _driversLicenseNumberTextFieldFocusNode = FocusNode();
  FocusNode _licenseStateTextFieldFocusNode = FocusNode();
  FocusNode _cigaretteLicenseNoTextFieldFocusNode = FocusNode();
  FocusNode _tobaccoLicenseNoTextFieldFocusNode = FocusNode();
  FocusNode _cityTextFieldFocusNode = FocusNode();
  FocusNode _zipTextFieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _fullNameTextFieldController.dispose();
    _nameOfBusinessTextFieldController.dispose();
    _emailAddressTextFieldController.dispose();
    _phoneTextFieldController.dispose();
    _passwordTextFieldController.dispose();
    _confirmPasswordTextFieldController.dispose();
    _mobileTextFieldController.dispose();
    _customerTypeTextFieldController.dispose();
    _customerStateTextFieldController.dispose();
    _stateResaleTaxIDTextFieldController.dispose();
    _driversLicenseNumberTextFieldController.dispose();
    _licenseStateTextFieldController.dispose();
    _cigaretteLicenseNoTextFieldController.dispose();
    _tobaccoLicenseNoTextFieldController.dispose();
    _cityTextFieldController.dispose();
    _zipTextFieldController.dispose();

    _fullNameTextFieldFocusNode.dispose();
    _nameOfBusinessTextFieldFocusNode.dispose();
    _emailAddressTextFieldFocusNode.dispose();
    _phoneTextFieldFocusNode.dispose();
    _passwordTextFieldFocusNode.dispose();
    _confirmPasswordTextFieldFocusNode.dispose();
    _mobileTextFieldFocusNode.dispose();
    _customerTypeTextFieldFocusNode.dispose();
    _customerStateTextFieldFocusNode.dispose();
    _stateResaleTaxIDTextFieldFocusNode.dispose();
    _driversLicenseNumberTextFieldFocusNode.dispose();
    _licenseStateTextFieldFocusNode.dispose();
    _cigaretteLicenseNoTextFieldFocusNode.dispose();
    _tobaccoLicenseNoTextFieldFocusNode.dispose();
    _cityTextFieldFocusNode.dispose();
    _zipTextFieldFocusNode.dispose();
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
                  child: Container(
                    // width: MediaQuery.of(context).size.width*0.7,
                    decoration: BoxDecoration(
                      color: Color(0XFFf8f9fa),
                      border: Border.all(
                        color: Color(0X33000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ///registration Form Text
                        Text(
                          registrationFormString,
                          style: forgetPasswordStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),

                        ///Come join the ABC Discounts as a Customer! Let's set up your Account
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Text(
                            comeJoinTheABCDiscountsAsACustomerString,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),

                        ///full Name
                        CustomFields(
                          labelText: fullNameString,
                          hintText: fullNameHintsString,
                          obscure: false,
                          controller: _fullNameTextFieldController,
                          focusNode: _fullNameTextFieldFocusNode,
                          type: TextInputType.name,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///name Of Business
                        CustomFields(
                          labelText: nameOfBusinessString,
                          hintText: nameOfBusinessHintsString,
                          obscure: false,
                          controller: _nameOfBusinessTextFieldController,
                          focusNode: _nameOfBusinessTextFieldFocusNode,
                          type: TextInputType.text,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///email Address
                        CustomFields(
                          labelText: emailAddressString,
                          hintText: emailAddressHintsString,
                          obscure: false,
                          controller: _emailAddressTextFieldController,
                          focusNode: _emailAddressTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///phone Hints
                        CustomFields(
                          labelText: phoneString,
                          hintText: phoneHintsString,
                          obscure: false,
                          controller: _phoneTextFieldController,
                          focusNode: _phoneTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///password Hints
                        CustomFields(
                          labelText: passwordString,
                          hintText: passwordHintsString,
                          obscure: false,
                          controller: _passwordTextFieldController,
                          focusNode: _passwordTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///confirm Password
                        CustomFields(
                          labelText: confirmPasswordString,
                          hintText: confirmPasswordHintsString,
                          obscure: false,
                          controller: _confirmPasswordTextFieldController,
                          focusNode: _confirmPasswordTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///mobile
                        CustomFields(
                          labelText: mobileString,
                          hintText: mobileHintsString,
                          obscure: false,
                          controller: _mobileTextFieldController,
                          focusNode: _mobileTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///customer Type

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.71,
                              margin: EdgeInsets.only(
                                  top: 6.0, bottom: 6.0, left: 6.0),
                              // padding: EdgeInsets.only(left: 3.0, ),
                              child: Text(
                                customerTypeString,
                                style: TextStyle(
                                  // color: TextFieldTitleColor,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFFdedede),
                                  // width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              // color: Colors.white,
                              width: MediaQuery.of(context).size.width * 0.72,
                              child: DropdownButton<String>(
                                dropdownColor: Colors.white,
                                focusColor: Colors.white,
                                focusNode: _customerTypeTextFieldFocusNode,
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 25.0,
                                ),
                                underline: Divider(
                                  thickness: 0,
                                  height: 0.0,
                                  color: Colors.transparent,
                                ),
                                isExpanded: true,
                                hint: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(
                                    customerTypeDropDownValue!,
                                    maxLines: 1,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xFF727272),
                                      fontSize: 14.0,
                                    ),
                                    // style: TextStyle(),
                                  ),
                                ),
                                items:
                                    customerTypeDropDownList.map((String? val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    alignment: AlignmentDirectional.center,
                                    enabled: true,
                                    onTap: () {
                                      setState(() {
                                        customerTypeDropDownValue = val;
                                        _customerTypeTextFieldController.text =
                                            val!;
                                      });
                                    },
                                    child: Text(
                                      val.toString(),
                                      style: TextStyle(
                                        // color:TextFieldTitleColor,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),

                        ///customer State

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.71,
                              margin: EdgeInsets.only(
                                  top: 6.0, left: 6.0, bottom: 6.0),
                              // padding: EdgeInsets.only(left: 3.0, ),
                              child: Text(
                                customerStateString,
                                style: TextStyle(
                                  // color: TextFieldTitleColor,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFFdedede),
                                  // width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              // color: Colors.white,
                              width: MediaQuery.of(context).size.width * 0.72,
                              child: DropdownButton<String>(
                                dropdownColor: Colors.white,
                                focusColor: Colors.white,
                                focusNode: _customerStateTextFieldFocusNode,
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 25.0,
                                ),
                                underline: Divider(
                                  thickness: 0,
                                  height: 0.0,
                                  color: Colors.transparent,
                                ),
                                isExpanded: true,
                                hint: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(
                                    customerStateDropDownValue!,
                                    maxLines: 1,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xFF727272),
                                      fontSize: 14.0,
                                    ),
                                    // style: TextStyle(),
                                  ),
                                ),
                                items: customerStateDropDownList
                                    .map((String? val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    alignment: AlignmentDirectional.center,
                                    enabled: true,
                                    onTap: () {
                                      setState(() {
                                        customerStateDropDownValue = val;
                                        _customerStateTextFieldController.text =
                                            val!;
                                      });
                                    },
                                    child: Text(
                                      val.toString(),
                                      style: TextStyle(
                                        // color:TextFieldTitleColor,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),

                        ///state Resale Tax ID
                        CustomFields(
                          labelText: stateResaleTaxIDString,
                          hintText: stateResaleTaxIDHintsString,
                          obscure: false,
                          controller: _stateResaleTaxIDTextFieldController,
                          focusNode: _stateResaleTaxIDTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///drivers License Number
                        CustomFields(
                          labelText: driversLicenseNumberString,
                          hintText: driversLicenseNumberHintsString,
                          obscure: false,
                          controller: _driversLicenseNumberTextFieldController,
                          focusNode: _driversLicenseNumberTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///license State
                        // CustomFields(
                        //   labelText: licenseStateString,
                        //   // hintText: cigaretteLicenseNoHintsString,
                        //   obscure: false,
                        //   controller: _licenseStateTextFieldController,
                        //   focusNode: _licenseStateTextFieldFocusNode,
                        //   type: TextInputType.emailAddress,
                        //   width: MediaQuery.of(context).size.width * 0.75,
                        //   textInputAction: TextInputAction.next,
                        // ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.71,
                              margin: EdgeInsets.only(
                                  top: 6.0, left: 6.0, bottom: 6.0),
                              // padding: EdgeInsets.only(left: 3.0, ),
                              child: Text(
                                licenseStateString,
                                style: TextStyle(
                                  // color: TextFieldTitleColor,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFFdedede),
                                  // width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              // color: Colors.white,
                              width: MediaQuery.of(context).size.width * 0.72,
                              child: DropdownButton<String>(
                                dropdownColor: Colors.white,
                                focusColor: Colors.white,
                                focusNode: _licenseStateTextFieldFocusNode,
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 25.0,
                                ),
                                underline: Divider(
                                  thickness: 0,
                                  height: 0.0,
                                  color: Colors.transparent,
                                ),
                                isExpanded: true,
                                hint: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(
                                    licenseStateDropDownValue!,
                                    maxLines: 1,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xFF727272),
                                      fontSize: 14.0,
                                    ),
                                    // style: TextStyle(),
                                  ),
                                ),
                                items: customerStateDropDownList
                                    .map((String? val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    alignment: AlignmentDirectional.center,
                                    enabled: true,
                                    onTap: () {
                                      setState(() {
                                        licenseStateDropDownValue = val;
                                        _licenseStateTextFieldController.text =
                                            val!;
                                      });
                                    },
                                    child: Text(
                                      val.toString(),
                                      style: TextStyle(
                                        // color:TextFieldTitleColor,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),

                        ///cigarette License No
                        CustomFields(
                          labelText: cigaretteLicenseNoString,
                          hintText: cigaretteLicenseNoHintsString,
                          obscure: false,
                          controller: _cigaretteLicenseNoTextFieldController,
                          focusNode: _cigaretteLicenseNoTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///tobacco License No
                        CustomFields(
                          labelText: tobaccoLicenseNoString,
                          hintText: tobaccoLicenseNoHintsString,
                          obscure: false,
                          controller: _tobaccoLicenseNoTextFieldController,
                          focusNode: _tobaccoLicenseNoTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///city
                        CustomFields(
                          labelText: cityString,
                          hintText: cityHintsString,
                          obscure: false,
                          controller: _cityTextFieldController,
                          focusNode: _cityTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///zip
                        CustomFields(
                          labelText: zipString,
                          hintText: zipHintsString,
                          obscure: false,
                          controller: _zipTextFieldController,
                          focusNode: _zipTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        ///Upload Concerned Documents
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          child: Text(
                            uploadConcernedDocumentsString,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        ///Federal Text Form
                        GestureDetector(
                          child: Container(
                            // padding: const EdgeInsets.all(14.0),
                            width: MediaQuery.of(context).size.width * 0.72,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFdedede),
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(federalTextFormString),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(14.0),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFE9ECEF),
                                    border: Border(
                                      left: BorderSide(
                                        //                   <--- left side
                                        color: Color(0XFFCED4DA),
                                      ),
                                    ),
                                  ),
                                  child: Text(BrowseString),
                                ),
                                // ElevatedButton(onPressed: (){}, child: Text(BrowseString),)
                              ],
                            ),
                          ),
                          onTap: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              File file = File(result.files.single.path!);
                            } else {
                              // User canceled the picker
                            }
                          },
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),

                        ///Sale Tax ID String
                        GestureDetector(
                          child: Container(
                            // padding: const EdgeInsets.all(14.0),
                            width: MediaQuery.of(context).size.width * 0.72,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFdedede),
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(SaleTaxIDString),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(14.0),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFE9ECEF),
                                    border: Border(
                                      left: BorderSide(
                                        //                   <--- left side
                                        color: Color(0XFFCED4DA),
                                      ),
                                    ),
                                  ),
                                  child: Text(BrowseString),
                                ),
                                // ElevatedButton(onPressed: (){}, child: Text(BrowseString),)
                              ],
                            ),
                          ),
                          onTap: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              File file = File(result.files.single.path!);
                            } else {
                              // User canceled the picker
                            }
                          },
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),

                        ///iD Copy Driving License String
                        GestureDetector(
                          child: Container(
                            // padding: const EdgeInsets.all(14.0),
                            width: MediaQuery.of(context).size.width * 0.72,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFdedede),
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    iDCopyDrivingLicenseString,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 8),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFE9ECEF),
                                    border: Border(
                                      left: BorderSide(
                                        //                   <--- left side
                                        color: Color(0XFFCED4DA),
                                      ),
                                    ),
                                  ),
                                  child: Text(BrowseString),
                                ),
                                // ElevatedButton(onPressed: (){}, child: Text(BrowseString),)
                              ],
                            ),
                          ),
                          onTap: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              File file = File(result.files.single.path!);
                            } else {
                              // User canceled the picker
                            }
                          },
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),

                        ///Button Next
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: MyCustomButton(
                                child: nextButtonNameString,
                                color: Colors.white,
                                // buttonColor: Colors.green,
                                buttonColor: Color(0XffFF5722),
                                onPressed: () {
                                  setState(
                                    () {
                                      bool res = _onButtonPressed();
                                      if (res) {
                                        Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  CertificateOfExemption()),
                                        );
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),

                        /// Skip Button(),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                child: Text(
                                  SkipButtonNameString,
                                  style: TextStyle(color: Colors.red),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            CertificateOfExemption()),
                                  );
                                },
                              ),
                              // SizedBox(width: 20.0,),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ],
                    ),
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
    if (_fullNameTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Full Name");
      _fullNameTextFieldFocusNode.requestFocus();
      return false;
    } else if (_nameOfBusinessTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Name of Business");
      _nameOfBusinessTextFieldFocusNode.requestFocus();
      return false;
    }
    if (_emailAddressTextFieldController.text.isEmpty ||
        !_validateEmail(_emailAddressTextFieldController.text)) {
      failedSnackBar(context, msg: 'Please Enter Your Email address');
      _emailAddressTextFieldFocusNode.requestFocus();
      return false;
    } else if (_phoneTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Phone");
      _phoneTextFieldFocusNode.requestFocus();
      return false;
    } else if (_passwordTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Password");
      _passwordTextFieldFocusNode.requestFocus();
      return false;
    } else if (_confirmPasswordTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Again New Password");
      _confirmPasswordTextFieldFocusNode.requestFocus();
      return false;
    } else if (_mobileTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Mobile");
      _mobileTextFieldFocusNode.requestFocus();
      return false;
    } else if (_customerTypeTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter customer Type");
      _customerTypeTextFieldFocusNode.requestFocus();
      return false;
    } else if (_customerStateTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Customer State");
      _customerStateTextFieldFocusNode.requestFocus();
      return false;
    } else if (_stateResaleTaxIDTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter state Resale Tax ID");
      _stateResaleTaxIDTextFieldFocusNode.requestFocus();
      return false;
    } else if (_driversLicenseNumberTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter drivers License Number");
      _driversLicenseNumberTextFieldFocusNode.requestFocus();
      return false;
    } else if (_licenseStateTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter license State");
      _licenseStateTextFieldFocusNode.requestFocus();
      return false;
    } else if (_cigaretteLicenseNoTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Cigarette LicenseNo");
      _cigaretteLicenseNoTextFieldFocusNode.requestFocus();
      return false;
    } else if (_tobaccoLicenseNoTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Tobacco LicenseNo");
      _tobaccoLicenseNoTextFieldFocusNode.requestFocus();
      return false;
    } else if (_cityTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter city");
      _cityTextFieldFocusNode.requestFocus();
      return false;
    } else if (_zipTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter zip Code");
      _zipTextFieldFocusNode.requestFocus();
      return false;
    } else {
      return true;
    }
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
