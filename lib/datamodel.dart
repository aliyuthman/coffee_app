//oop with dart

class Product {

//properties
  int id;
  String name;
  double price;
  String image;



  //constructor method for the class Products

  Product ({

    required this.id,
    required this.name,
    required this.price,
    required this.image,
  })
}

class Category {
  String name;
  List<Product> products;


  //constructor methods
  Category({

    required this.name,
    required this.products,
  })
}

class ItemInCart {

  Product product;
  int quantity;
  


  //constructor methods of the class ItemInCart

  ItemInCart({

    required this.product,
    required this.quantity,
  })

}
