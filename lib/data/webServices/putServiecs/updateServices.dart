import 'dart:convert';

import 'package:http/http.dart'as http;

import '../../helper/api.dart';

class UpdataProduct{
Future<dynamic> updateProduct ({
    required String image,
    required String title,
    required String description,
    required String price,
    required String category,
  })async{
  http.Response response=await Api().put(url: 'https://fakestoreapi.com/products/:id', body: {
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