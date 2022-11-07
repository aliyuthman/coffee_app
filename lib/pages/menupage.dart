import 'package:coffee_app/datamanager.dart';
import 'package:coffee_app/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../datamanager.dart';

class MenuPage extends StatelessWidget {
  final DataManger dataManager;
  const MenuPage({Key? key, required this.dataManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Text("Hey! Menu Page");

    var dummy_product = Product(
      id: 1,
      name: "Dummy Product",
      price: 10,
      image: "",
    );

    var dummy_product1 = Product(
      id: 1,
      name: "Dummy Product1",
      price: 10,
      image: "",
    );

    return ListView(
      children: [
        ProductItem(
          product: dummy_product,
          onAdd: () {},
        ),
        ProductItem(
          product: dummy_product,
          onAdd: () {},
        ),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onAdd;

  const ProductItem({
    Key? key,
    required this.product,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(("images/black_coffee.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("\$${product.price}"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: ElevatedButton(
                    onPressed: () {
                      onAdd(product);
                    },
                    child: const Text("Add"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
