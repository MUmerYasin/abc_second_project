import 'dart:async';

import 'package:abc_cash_and_carry/helpers/custom_appbar.dart';
import 'package:abc_cash_and_carry/helpers/custom_drawer.dart';
import 'package:abc_cash_and_carry/helpers/custom_text_field.dart';
import 'package:abc_cash_and_carry/utils/strings/button_names_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/multiline_text_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/screens_titles_strings.dart';
import 'package:abc_cash_and_carry/utils/strings/text_fields_name_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBarDrawerAndNotificationButtons(),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),

                Text(
                  contactUsString,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    // height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),

                Text(
                  SendUsANoteString,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    // height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),

                ///full Name
                CustomFields(
                  labelText: fullNameString,
                  // hintText: fullNameHintsString,
                  obscure: false,
                  // controller: _fullNameTextFieldController,
                  // focusNode: _fullNameTextFieldFocusNode,
                  type: TextInputType.name,
                  width: MediaQuery.of(context).size.width * 0.75,
                  textInputAction: TextInputAction.next,
                ),

                ///email Address
                CustomFields(
                  labelText: emailAddressString,
                  hintText: emailAddressHintsString,
                  obscure: false,
                  // controller: _emailAddressTextFieldController,
                  // focusNode: _emailAddressTextFieldFocusNode,
                  type: TextInputType.emailAddress,
                  width: MediaQuery.of(context).size.width * 0.75,
                  textInputAction: TextInputAction.next,
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          yourMessageString,
                          textAlign: TextAlign.left,
                          // style: TextStyle(color: TextFieldTitleColor),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6.0),
                        padding: EdgeInsets.only(left: 4.0, right: 4.0),
                        // height: widget.height,
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          // inputFormatters: [
                          //   LengthLimitingTextInputFormatter(widget.length)
                          // ],
                          // onChanged: ,
                          // controller: ,
                          // obscureText:,
                          // keyboardType:,
                          // focusNode: ,
                          // textInputAction:,

                          style: TextStyle(
                            color: Color(0xFF727272),
                            fontSize: 14.0,
                          ),
                          // cursorColor: Color(0xFF7f7f7f),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                top: 12.0,
                                bottom: 12.0),

                            fillColor: Colors.white,
                            // fillColor: Color(0xFFBED0E9),//BED0E9
                            focusColor: Colors.white,
                            hoverColor: Colors.white,
                            filled: true,
                            // hintText: widget.hintText,
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
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0XFF17a2b8)),
                        ),
                        onPressed: () {},
                        child: Text(submitButtonNameString),
                      ),

                      /// Address
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Center(
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: AddressTitleString,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextSpan(text: "\n\n"),
                              TextSpan(
                                text: AddressValueString,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  // height: 1.5,
                                ),
                              ),
                              TextSpan(text: "\n"),
                              TextSpan(
                                text: AddressValue2String,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  // height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      /// Phone
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Center(
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: phoneTitleString,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextSpan(text: "\n\n"),
                              TextSpan(
                                text: phoneValueString,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  // height: 1.5,
                                ),
                              ),
                              TextSpan(text: "\n"),
                              TextSpan(
                                text: phoneValue2String,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  // height: 1.5,
                                ),
                              ),
                              TextSpan(text: "\n"),
                              TextSpan(
                                text: phoneValue2String,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  // height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      /// Email
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Center(
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: EmailTitleString,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextSpan(text: "\n\n"),
                              TextSpan(
                                text: EmailValueString,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  // height: 1.5,
                                ),
                              ),
                              TextSpan(text: "\n"),
                              TextSpan(
                                text: emailValue2String,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  // height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Center(
                        child: Text(
                          getDirectionsString,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 400,
                        child: MapSample(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///-----------
class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
