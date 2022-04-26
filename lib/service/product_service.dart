import 'dart:convert';

import 'package:http/http.dart';
import 'package:product/models/product_model.dart';

class ProductService{
  static const baseUrl = "jsonplaceholder.typicode.com";

  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  static const String apiProducts = "/products";
  static const String apiProduct = "/products/";

  static Future GET(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static Future<String> POST(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static Future<String> PATCH(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await patch(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static Future<String> PUT(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await put(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static Future<String> DELETE(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await delete(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception("error");
    }
  }

  static List<Product?> parsePhotoList(String body){
    List json = jsonDecode(body);
    List<Product> todos = json.map((map) => Product.fromJson(map)).toList();
    return todos;
  }

  static Product parsePhoto(String body){
    Map<String, dynamic> json = jsonDecode(body);
    Product product = Product.fromJson(json);
    return product;
  }
}