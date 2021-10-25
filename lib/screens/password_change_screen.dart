import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_buttons.dart';
import 'package:abc_cash_and_carry/helpers/custom_text_field.dart';
import 'package:abc_cash_and_carry/helpers/custom_toaster.dart';
import 'package:abc_cash_and_carry/utils/colors/custom_colors.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:abc_cash_and_carry/utils/strings/button_names_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/screens_titles_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/text_fields_name_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController _loginConfirmPasswordTextFieldController =
      TextEditingController();
  TextEditingController _loginNewPasswordTextFieldController =
      TextEditingController();

  FocusNode _confirmPasswordTextFieldFocusNode = FocusNode();
  FocusNode _newPasswordTextFieldFocusNode = FocusNode();

  bool _isObscure = true;
  bool _isObscureSecond = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _loginConfirmPasswordTextFieldController.dispose();
    _loginNewPasswordTextFieldController.dispose();

    _confirmPasswordTextFieldFocusNode.dispose();
    _newPasswordTextFieldFocusNode.dispose();
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
                height: MediaQuery.of(context).size.height * 0.1,
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
                        Text(
                          passwordChangeScreenTitlesString,
                          style: forgetPasswordStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.04,
                        ),
                        CustomFields(
                          labelText: newPasswordString,
                          // hintText: aBC_StringPasswordValues,
                          obscure: _isObscure,
                          controller: _loginNewPasswordTextFieldController,
                          focusNode: _newPasswordTextFieldFocusNode,
                          type: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
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
                          height: MediaQuery.of(context).size.width * 0.02,
                        ),
                        CustomFields(
                          labelText: confirmPasswordString,
                          // hintText: aBC_StringPasswordValues,
                          obscure: _isObscureSecond,
                          controller: _loginConfirmPasswordTextFieldController,
                          focusNode: _confirmPasswordTextFieldFocusNode,
                          type: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          postfixIcon: _isObscureSecond
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onPressed: () {
                            setState(
                              () {
                                _isObscureSecond = !_isObscureSecond;
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
                              child: submitButtonNameString,
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
                                                LoginScreen()),
                                      );
                                    }
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
            ],
          ),
        ),
      ),
    );
  }

  _onButtonPressed() {
    if (_loginNewPasswordTextFieldController.text.length < 6) {
      failedSnackBar(context, msg: "Enter Valid Password");
      _newPasswordTextFieldFocusNode.requestFocus();
      return false;
    } else if (_loginNewPasswordTextFieldController.text.length < 6) {
      failedSnackBar(context, msg: "Enter Valid Password");
      _newPasswordTextFieldFocusNode.requestFocus();
      return false;
    } else {
      return true;
    }
  }
}
