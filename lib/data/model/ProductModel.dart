class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;


  ProductModel( {
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,

  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      image: jsonData['image'],
      price: (jsonData['price'] as num).toDouble(), );
  }
}

 class RatingModel {
   final double rate;
   final int count;
   RatingModel({required this.count, required this.rate});

   factory RatingModel.fromJson(jsonData) {
     return RatingModel(count: jsonData['rate'], rate: jsonData['count']);
   }
 }