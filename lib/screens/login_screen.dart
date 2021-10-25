import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_buttons.dart';
import 'package:abc_cash_and_carry/helpers/custom_dialogue_widget.dart';
import 'package:abc_cash_and_carry/helpers/custom_text_field.dart';
import 'package:abc_cash_and_carry/helpers/custom_toaster.dart';
import 'package:abc_cash_and_carry/screens/home_screen.dart';
import 'package:abc_cash_and_carry/screens/registration_screen.dart';
import 'package:abc_cash_and_carry/services/api_manger.dart';
import 'package:abc_cash_and_carry/utils/colors/custom_colors.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:abc_cash_and_carry/utils/strings/button_names_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/screens_titles_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/text_fields_name_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _loginEmailTextFieldController =
      TextEditingController();
  TextEditingController _loginPasswordTextFieldController =
      TextEditingController();

  FocusNode _loginEmailTextFieldFocusNode = FocusNode();
  FocusNode _loginPasswordTextFieldFocusNode = FocusNode();

  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _loginEmailTextFieldController.dispose();
    _loginPasswordTextFieldController.dispose();
    _loginEmailTextFieldFocusNode.dispose();
    _loginPasswordTextFieldFocusNode.dispose();
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
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  loginScreenTitlesString,
                  style: loginStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
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
                          height: MediaQuery.of(context).size.width * 0.02,
                        ),
                        CustomFields(
                          labelText: passwordString,
                          // hintText: aBC_StringPasswordValues,
                          obscure: _isObscure,
                          controller: _loginPasswordTextFieldController,
                          focusNode: _loginPasswordTextFieldFocusNode,
                          type: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          postfixIcon: _isObscure
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onPressed: () {
                            setState(
                              () {
                                _isObscure = !_isObscure;
                              },
                            );
                          },
                          width: MediaQuery.of(context).size.width * 0.75,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyCustomButton(
                              child: loginButtonNameString,
                              color: Colors.white,
                              //buttonColor:
                              onPressed: () async {
                                // setState(
                                //   ()  {
                                    bool res = await _onButtonPressed();
                                    if (res) {
                                      showAlertDialog(context);
                                      bool res = await LoginApiService()
                                          .loginService(
                                              email:
                                                  _loginEmailTextFieldController
                                                      .text,
                                              password:
                                                  _loginPasswordTextFieldController
                                                      .text);
                                      Navigator.pop(context);
                                      if (res) {
                                        print(
                                            "login successfully now navigate to home screen");

                                        Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  ABCHomeVersionOneScreen()),
                                        );

                                      } else {
                                        const Center(
                                          child: CupertinoActivityIndicator(
                                            radius: 20,
                                          ),
                                        );
                                      }
                                    }
                                  },
                                // );
                              // },
                            ),
                            MyCustomButton(
                              child: forgetButtonNameString,
                              color: Colors.white,
                              //buttonColor:
                              onPressed: () {
                                setState(
                                  () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              ForgetPassword()),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyCustomButton(
                              child: createNewAccountButtonNameString,
                              color: Colors.white,
                              // buttonColor: Colors.green,
                              buttonColor: Color(0Xff28a745),
                              onPressed: () {
                                setState(
                                  () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              RegistrationScreen()),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
                              builder: (context) => ABCHomeVersionOneScreen()),
                        );
                      },
                    ),
                    // SizedBox(width: 20.0,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onButtonPressed() {
    print(_loginPasswordTextFieldController.text);
    if (_loginEmailTextFieldController.text.isEmpty ||
        !_validateEmail(_loginEmailTextFieldController.text)) {
      failedSnackBar(context, msg: 'Please Enter Your Email address');
      _loginEmailTextFieldFocusNode.requestFocus();
      return false;
    } else if (_loginPasswordTextFieldController.text.length < 3) {
      failedSnackBar(context, msg: "Enter Valid 6 Di Password");
      _loginPasswordTextFieldFocusNode.requestFocus();
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
