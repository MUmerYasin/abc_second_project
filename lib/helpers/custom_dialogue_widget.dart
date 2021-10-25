import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    // title: Text("Simple Alert"),
    content: CupertinoActivityIndicator(radius: 20,),
    // actions: [
    //   CupertinoActivityIndicator(radius: 20,),
    // ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}