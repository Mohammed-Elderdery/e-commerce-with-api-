import 'package:fake_api_store/models/product.dart';
import 'package:http/http.dart' as http;

class ShopApi {
  getData() async {
    var uri =
        Uri.parse('https://fakestoreapi.com/products/category/electronics');

    final response = await http.get(uri);
    var json = response.body;
    return productFromJson(json);
  }

  getDatabyCategory(String category) async {
    var uri = Uri.parse('https://fakestoreapi.com/products/category/$category');

    final response = await http.get(uri);
    var json = response.body;
    return productFromJson(json);
  }
}
