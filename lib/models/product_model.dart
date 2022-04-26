

class Product {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List? image = [];

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.image,
});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    image = json['image'];
  }

  Map<String, dynamic> toJson () => {
    'id': id,
    'title': title,
    'description': description,
    'price': price,
    'discountPercentage': discountPercentage,
    'rating': rating,
    'stock': stock,
    'brand': brand,
    'category': category,
    'thumbnail': thumbnail,
    'image': image,
  };

  @override
  String toString() {
    // TODO: implement toString
    return "Id: $id\nTitle: $title\nDesc: $description\nPrc: $price\nDpe: $discountPercentage\nRtg: $rating\nStc: $stock\nBrd: $brand\nCgy: $category\nTurl: $thumbnail\nImg: $image";
  }
}