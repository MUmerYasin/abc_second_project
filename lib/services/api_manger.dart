import 'dart:convert';

import 'package:abc_cash_and_carry/models/single_product_model.dart';
import 'package:abc_cash_and_carry/models/user_model.dart';
import 'package:http/http.dart' as http;

class SingleProductApiManager {
  //const String baseUrl ='http://apps.ab-sol.net/';
  //
  // const String apiRoute ='s4mQaApi/api';
  //
  // const String token ='cb77cce6-c2cb-471b-bdd4-5dac8c93b759';
  //
  // const String authKeyParameter ='auth_token=';
  // // login --> urls
  // const String completeLoginUrl = baseUrl+apiRoute+loginRoute+authKeyParameter+token;

  var productUrl = Uri.parse('https://fakestoreapi.com/products');

  List<SingleProductModel> products = [];

  // Map<String, dynamic> singleProductModelForJSON = new Map();

  Future<List<SingleProductModel>> getSingleProduct() async {
    var client = http.Client();
    try {
      var response = await client.get(productUrl);
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonMap = json.decode(response.body);
        jsonMap.forEach(
          (v) {
            products.add(SingleProductModel.fromJson(v));
          },
        );
        return products;
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
      return products;
    }
  }
}

class LoginApiService {
  /// login Screen POST API where we send User name and password through API
  Future<bool> loginService(
      {required String email, required String password}) async {
    try {
      http.Response response = await http.post(
          Uri.parse(
              "https://apps.ab-sol.net/abc.api/api/Security/AuthenticateLogin"),
          headers: {"Content-Type": "application/json"},
          body: json.encode({
            "email": email,
            "passwordHash": password,
            // "email": "syedali@gmail.com",
            // "passwordHash": "123"
          }));

      print("response statusCode   --> ${response.statusCode}");
      print("response body   --> ${response.body}");
      // print("json.decode   --> ${json.decode(response.body)}");


      if(response.statusCode==200){
        UserModel user = UserModel.fromJson(json.decode(response.body));

        return true;
      }
      else {
        return false;
      }
      // if (response.statusCode == 200) {
      //   if (response.body == "Invalid Email or Password") {
      //     return false;
      //   }
      //   else {
      //     UserModel user = UserModel.fromJson(
      //       json.decode(response.body),
      //     );
      //   }
      //
      //   return true;
      // } else {
      //   return false;
      // }
    } catch (e) {
      print("eee");
      print(e.toString());
      return false;
    }
  }
}
