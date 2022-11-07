//oop with dart

class Product {
//properties
  int id;
  String name;
  double price;
  String image;
  String get imageUr => "https://firtman.github.io/coffeemastes/api/$image";

  //constructor method for the class Products

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  //Factory constructor
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as int,
        name: json['name'] as String,
        price: json['price'] as double,
        image: json['image'] as String);
  }
}

class Category {
  String name;
  List<Product> products;

  //constructor methods
  Category({
    required this.name,
    required this.products,
  });

  //Factory constructor
  factory Category.fromJson(Map<String, dynamic> json) {
    var productsJson = json['products'] as Iterable<dynamic>;
    var products = productsJson.map((p) => Product.fromJson(p)).toList();
    return Category(name: json['name'] as String, products: products);
  }
}

class ItemInCart {
  Product product;
  int quantity;

  //constructor methods of the class ItemInCart

  ItemInCart({
    required this.product,
    required this.quantity,
  });
}
