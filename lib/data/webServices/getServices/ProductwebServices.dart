import 'dart:convert';

import 'package:ecommerce/data/helper/api.dart';
import 'package:ecommerce/data/model/ProductModel.dart';
import 'package:http/http.dart' as http;

class GetProductWebServices {
  static String baseUrl = 'https://fakestoreapi.com';

  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
