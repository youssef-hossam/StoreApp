import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateproduct(
      {required int id,
      required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category
      },
    );
    return ProductModel.fromjson(data);
  }
}
