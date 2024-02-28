import 'package:ecommerce/data/helper/api.dart';
import 'package:http/http.dart' as http;
import '../../model/ProductModel.dart';

class GetCategoryWebServices {
  Future<List<dynamic>> getallCategories() async {

    List<dynamic>data = await Api().get(url: 'https://fakestoreapi.com/products/categories');


    List<ProductModel> productList =[];
    for(int i =0;i<data.length;i++){
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;


}}
