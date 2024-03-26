import 'package:store/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getcategories() async {
    List data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
