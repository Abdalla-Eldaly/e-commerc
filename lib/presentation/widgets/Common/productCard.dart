import 'package:ecommerce/data/model/ProductModel.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
   ProductCard({super.key, required this.productModel});
  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return   Stack(
      clipBehavior: Clip.none,

      children: [

        Card(
          elevation: 2,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(children: [
                  Expanded(child: Text(productModel.title,overflow: TextOverflow.ellipsis,))
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(r'$''${productModel.price.toString()}'),
                    Icon(Icons.favorite)
                  ],),
              ],
            ),
          ),
        ),
        Positioned(
            top: 10,
            left: 30,

            child: Image.network(productModel.image!,height: 120,width: 120,)),

      ],
    );
  }
}
