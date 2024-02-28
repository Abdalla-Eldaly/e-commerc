import 'dart:convert';

import 'package:ecommerce/data/helper/api.dart';
import 'package:http/http.dart'as http;
class AddProduct {
  Future<dynamic> addProduct({
    required String image,
    required String title,
    required String description,
    required String price,
    required String category,
  }) async {
   http.Response response=await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'description': description,
      'image': image,
      'price': price,
      'category': category,
    });

    if(response.statusCode==200){
return jsonEncode(response.body);
    }else{
      throw Exception('error in response ststes code${response.statusCode}');
    }
  }
}
