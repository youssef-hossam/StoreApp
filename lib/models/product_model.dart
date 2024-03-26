class ProductModel {
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.price,
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
  factory ProductModel.fromjson(jsonData) {
    return ProductModel(
        price: jsonData['price'],
        id: jsonData['id'],
        title: jsonData['title'],
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'],
        rating: RatingModel.fromjson(jsonData['rating']));
  }
}

class RatingModel {
  var rate;
  final int count;
  RatingModel({required this.count, required this.rate});
  factory RatingModel.fromjson(jsonData) {
    return RatingModel(count: jsonData['count'], rate: jsonData['rate']);
  }
}
