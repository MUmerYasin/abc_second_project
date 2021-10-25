import 'package:abc_cash_and_carry/screens/about_us_screen.dart';
import 'package:abc_cash_and_carry/screens/favorite_screen.dart';
import 'package:abc_cash_and_carry/screens/certificate_of_examption_screen.dart';
import 'package:abc_cash_and_carry/screens/contact_us_screen.dart';
import 'package:abc_cash_and_carry/screens/faq_screen.dart';
import 'package:abc_cash_and_carry/screens/forget_password_screen.dart';
import 'package:abc_cash_and_carry/screens/home_screen.dart';
import 'package:abc_cash_and_carry/screens/login_screen.dart';
import 'package:abc_cash_and_carry/screens/password_change_screen.dart';
import 'package:abc_cash_and_carry/screens/registration_screen.dart';
import 'package:abc_cash_and_carry/screens/send_otp_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:baseflow_plugin_template/baseflow_plugin_template.dart';
import 'package:permission_handler/permission_handler.dart';
import 'helpers/custom_permission_handler_widget.dart';
import 'package:provider/provider.dart';


void main() => runApp(

      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),

    // BaseflowPluginExample(
    //     pluginName: 'Permission Handler',
    //     githubURL: 'https://github.com/Baseflow/flutter-permission-handler',
    //     pubDevURL: 'https://pub.dev/packages/permission_handler',
    //     pages: [PermissionHandlerWidget.createPage()])
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: DevicePreview.locale(context),
      // Add the locale here
      builder: DevicePreview.appBuilder,

      // home: ABCHomeVersionOneScreen(),
      // home: RegistrationScreen(),
      // home: CertificateOfExemption(),
      home: LoginScreen(),
      // home: ABCFavoriteScreen(),
      // home: ForgetPassword(),
      // home: SendOTPScreen(),
      // home: ChangePasswordScreen(),
      // home: ContactUsScreen(),
      // home: FrequentlyAskedQuestionsScreen(),
      // home: AboutUsScreen(),
    );
  }
}
