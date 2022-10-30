import 'dart:convert';
import 'dart:io';

import 'package:ecommerce_faza/model/cart_model.dart';
import 'package:ecommerce_faza/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../config.dart';

class APIService {
  static var client = http.Client();

  static Future<List<CartModel>?> getCarts() async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.parse(
      Config.apiURL + Config.cartsAPI,
      // Config.cartsAPI,
    );

    var response = await client.get(
      url,
      headers: requestHeaders,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      debugPrint(data.toString());
      return cartsFromJson(data);

      //return true;
    } else {
      return null;
    }
  }

  static Future<List<ProductModel>?> getProducts() async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.parse(
      Config.apiURL + Config.productsAPI,
    );

    var response = await client.get(
      url,
      headers: requestHeaders,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      // debugPrint(data.toString());
      // return productsFromJson(data);

      // return true;
    } else {
      return null;
    }
  }
}
