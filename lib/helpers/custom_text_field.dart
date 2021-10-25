import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// Custom Text Fields, // All Side Border
class CustomFields extends StatefulWidget {
  late IconData? prefixIcon;
  late IconData? postfixIcon;
  final String? labelText;
  final String? hintText;
  final double width;
  final Function(String)? onchange;
  final Function()? onPressed;
  final bool obscure;
  final TextInputType? type;
  final TextEditingController? controller;

  // late final FocusNode? focusNode;
  final FocusNode? focusNode;
  final int? length;
  final TextInputAction textInputAction;

  CustomFields({
    this.focusNode,
    this.labelText,
    this.hintText,
    this.type,
    this.controller,
    this.width = double.infinity,
    this.prefixIcon,
    this.postfixIcon,
    this.onchange,
    this.obscure = false,
    this.length,
    this.textInputAction = TextInputAction.done,
    this.onPressed,
  });

  @override
  _CustomFieldsState createState() => _CustomFieldsState();
}

class _CustomFieldsState extends State<CustomFields> {
  // bool _validate = false;

  @override
  void initState() {
    // widget.focusNode = null;
    widget.prefixIcon = null;
    widget.postfixIcon = null;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (widget.labelText == null)
                ? Container()
                : Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      widget.labelText!,
                      // style: TextStyle(color: TextFieldTitleColor),
                    ),
                  ),
            Container(
              margin: EdgeInsets.only(top: 6.0),
              padding: EdgeInsets.only(left: 4.0, right: 4.0),
              // height: widget.height,
              width: widget.width,
              child: TextField(
                minLines: 1,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(widget.length)
                ],
                onChanged: widget.onchange,
                controller: widget.controller,
                obscureText: widget.obscure,
                keyboardType: widget.type,
                focusNode: widget.focusNode,
                textInputAction: widget.textInputAction,

                style: TextStyle(
                  color: Color(0xFF727272),
                  fontSize: 14.0,
                ),
                // cursorColor: Color(0xFF7f7f7f),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 12.0, bottom: 12.0),

                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     width: 1.0,
                  //   ),
                  //   borderRadius: BorderRadius.circular(6.0),
                  // ),

                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide:
                  //   BorderSide(
                  //       color: TextFieldBorderColor,
                  //       width: 1.5),
                  // ),
                  // focusedBorder: UnderlineInputBorder(
                  //   borderSide:
                  //   BorderSide(
                  //       color: TextFieldBorderColor,
                  //       width: 1.5),
                  // ),

                  fillColor: Colors.white,
                  // fillColor: Color(0xFFBED0E9),//BED0E9
                  focusColor: Colors.white,
                  hoverColor: Colors.white,
                  filled: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(color: Color(0xFF7f7f7f)),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFdedede),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),

                  prefixIcon: widget.prefixIcon == null
                      ? null
                      : Icon(
                          widget.prefixIcon,
                          color: Color(0xFF818181),
                        ),
                  suffixIcon: widget.postfixIcon == null
                      ? null
                      : IconButton(
                          icon: Icon(widget.postfixIcon),
                          onPressed: widget.onPressed,
                          color: Color(0xFF818181),
                          // color: Colors.black54,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Custom Text Fields // Under Line Border
class CustomTextFieldsWithUnderLineBorder extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final double width;
  final Function(String)? onchange;
  final Function()? onPressed;
  final bool obscure;
  final TextInputType? type;
  final TextEditingController? controller;

  // late final FocusNode? focusNode;
  final FocusNode? focusNode;
  final int? length;
  final TextInputAction textInputAction;

  CustomTextFieldsWithUnderLineBorder({
    this.focusNode,
    this.labelText,
    this.hintText,
    this.type,
    this.controller,
    this.width = double.infinity,
    this.onchange,
    this.obscure = false,
    this.length,
    this.textInputAction = TextInputAction.done,
    this.onPressed,
  });

  @override
  _CustomTextFieldsWithUnderLineBorderState createState() =>
      _CustomTextFieldsWithUnderLineBorderState();
}

class _CustomTextFieldsWithUnderLineBorderState
    extends State<CustomTextFieldsWithUnderLineBorder> {
  // bool _validate = false;

  @override
  void initState() {
    // widget.focusNode = null;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (widget.labelText == null)
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.labelText!,
                    // style: TextStyle(color: TextFieldTitleColor),
                  ),
                ),
          Container(
            // height: 30,
            // margin: EdgeInsets.only(top: 6.0),
            padding: EdgeInsets.only(left: 4.0, right: 4.0),
            // height: widget.height,
            width: widget.width,
            child: TextField(
              minLines: 1,
              inputFormatters: [
                LengthLimitingTextInputFormatter(widget.length)
              ],
              onChanged: widget.onchange,
              controller: widget.controller,
              obscureText: widget.obscure,
              keyboardType: widget.type,
              focusNode: widget.focusNode,
              textInputAction: widget.textInputAction,

              style: TextStyle(
                // color: Color(0xFF727272),
                color: Colors.black,
                fontSize: 16.0,
              ),
              // cursorColor: Color(0xFF7f7f7f),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),

                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                ),

                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      // color: Color(0xFFdedede),
                      color: Colors.black,
                      width: 1.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                ),

                fillColor: Colors.white,
                // fillColor: Color(0xFFBED0E9),//BED0E9
                focusColor: Colors.white,
                hoverColor: Colors.white,
                filled: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Color(0xFF7f7f7f)),

                // enabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Color(0xFFdedede),
                //     width: 1.0,
                //   ),
                //   borderRadius: BorderRadius.circular(6.0),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.blue,
                //     width: 2.0,
                //   ),
                //   borderRadius: BorderRadius.circular(6.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
