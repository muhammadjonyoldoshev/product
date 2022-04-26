
import 'package:product/models/product_model.dart';
import 'package:product/service/product_service.dart';

void main() async {
  String body = await ProductService.GET(ProductService.apiProduct,ProductService.headers);
  List<Product?> product = ProductService.parsePhotoList(body);
  print(product);

  Product product1 = Product(id: 11, title: 'Iphone 13', description: 'the best phone', price: 1550, discountPercentage: 15.52, rating: 3.6, stock: 125, brand: 'Apple', category: 'pro max', thumbnail: 'https://dummyjson.com/image/i/products/1/thumbnail.jpg', image: []);
  String response = await ProductService.POST(ProductService.apiProduct, ProductService.headers, product1.toJson());
  print("post: $response");


  String response1 = await ProductService.GET(ProductService.apiProduct + product1.id.toString(), ProductService.headers);
  print("get: $response1");

  String response2 = await ProductService.PUT(ProductService.apiProduct + product1.id.toString(), ProductService.headers, product1.toJson());
  print("put: $response2");

  String response4 = await ProductService.PATCH(ProductService.apiProduct + product1.id.toString(), ProductService.headers,{'title': "flutter"});
  print("patch: $response4");

  String response3 = await ProductService.DELETE(ProductService.apiProduct + product1.id.toString(),ProductService.headers);
  print("delete: $response3");
}