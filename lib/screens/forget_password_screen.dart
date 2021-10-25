import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_buttons.dart';
import 'package:abc_cash_and_carry/helpers/custom_text_field.dart';
import 'package:abc_cash_and_carry/helpers/custom_toaster.dart';
import 'package:abc_cash_and_carry/screens/password_change_screen.dart';
import 'package:abc_cash_and_carry/screens/send_otp_screen.dart';
import 'package:abc_cash_and_carry/utils/colors/custom_colors.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:abc_cash_and_carry/utils/strings/button_names_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/screens_titles_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/text_fields_name_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/warning_alert_info_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _loginEmailTextFieldController =
      TextEditingController();

  FocusNode _loginEmailTextFieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _loginEmailTextFieldController.dispose();
    _loginEmailTextFieldFocusNode.dispose();
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.25,
              ),
              // Align(
              //   alignment: Alignment.center,
              //   child: Text(
              //     forgetPasswordScreenTitlesString,
              //     style: forgetPasswordStyle,
              //     textAlign: TextAlign.center,
              //   ),
              // ),

              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.87,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          forgetPasswordScreenTitlesString,
                          style: forgetPasswordStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Color(0XFFd4edda),
                            border: Border.all(
                              color: Color(0XFFc3e6cb),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          padding: const EdgeInsets.all(12.0),
                          // color: Color(0XFFd4edda),
                          child: Text(enterYourEmailForForgetPasswordInfoString,
                              style: forgetPasswordInfoStyle),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),

                        CustomFields(
                          labelText: emailAddressString,
                          // hintText: aBC_StringEmailValues,
                          obscure: false,
                          controller: _loginEmailTextFieldController,
                          focusNode: _loginEmailTextFieldFocusNode,
                          type: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width * 0.75,
                          textInputAction: TextInputAction.next,
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),

                        ///Button Send OPT, Verify
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyCustomButton(
                              child: sendOptButtonNameString,
                              color: Colors.white,
                              //buttonColor:
                              onPressed: () {
                                setState(
                                  () {
                                    bool res = _onButtonPressed();
                                    if (res) {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) =>
                                                SendOTPScreen()),
                                      );
                                    }
                                  },
                                );
                              },
                            ),
                            MyCustomButton(
                              child: verifyButtonNameString,
                              color: Colors.white,
                              // buttonColor: Colors.green,
                              buttonColor: Color(0Xff28a745),
                              onPressed: () {
                                setState(
                                  () {
                                    bool res = _onButtonPressed();
                                    if (res) {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) =>
                                                ChangePasswordScreen()),
                                      );
                                    }
                                  },
                                );
                              },
                            ),
                          ],
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onButtonPressed() {
    if (_loginEmailTextFieldController.text.isEmpty ||
        !_validateEmail(_loginEmailTextFieldController.text)) {
      failedSnackBar(context, msg: 'Please Enter Your Email address');
      _loginEmailTextFieldFocusNode.requestFocus();
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
