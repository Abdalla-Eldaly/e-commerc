import 'package:ecommerce/data/model/ProductModel.dart';
import 'package:ecommerce/presentation/widgets/Common/productCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data/webServices/getServices/ProductwebServices.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Trends'),
        centerTitle: true,
        actions: const [Icon(FontAwesomeIcons.cartPlus)],
      ),
      body: ListView(
        children: [
          FutureBuilder<List<ProductModel>>(
            future:GetProductWebServices().getAllProducts() ,
            builder: (context, snapshot) {
              print('+++++++++++');

             if(snapshot.hasData ){
               List<ProductModel>products =snapshot.data!;
               return GridView.builder(
                 physics: const NeverScrollableScrollPhysics(),
                 padding:
                 const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                 shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                 itemCount: products.length,
                 gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                   maxCrossAxisExtent: 200,
                   mainAxisExtent: 200,
                   mainAxisSpacing: 8,
                   crossAxisSpacing: 8,
                 ),
                 itemBuilder: (context, index) {
                   print('+++++++++++');
                   return ProductCard(productModel: products[index]);
                 },
               );
             }
             if (snapshot.hasError) {
               print('Error: ${snapshot.error}');

               return Center(child: Text('Error: ${snapshot.error}'));
             }

             else{
               return Center(child: CircularProgressIndicator());
             }
            },
          )
        ],
      ),
    );
  }
}
