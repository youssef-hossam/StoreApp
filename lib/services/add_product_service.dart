import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class AddProductServices {
  Future<ProductModel> addproduct(
      {required String title,
      required double price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        {
          "title": title,
          "price": price,
          "description": description,
          "image": image,
          "category": category
        }
      },
    );
    return ProductModel.fromjson(data);
  }
}
