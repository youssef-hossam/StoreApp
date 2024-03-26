import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class CategoryService {
  Future<List<ProductModel>> getcategory({required String categoryname}) async {
    List data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryname');

    List<ProductModel> productmodellist = [];
    for (var i = 0; i < data.length; i++) {
      productmodellist.add(ProductModel.fromjson(data[i]));
    }
    return productmodellist;
  }
}
