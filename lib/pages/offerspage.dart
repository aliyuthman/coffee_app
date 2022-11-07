import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          Offer(
            title: "My great offer ever",
            description: "Buy 1, get 10 for free",
          ),
          Offer(
            title: "My great offer ever",
            description: "Buy 1, get 10 for free",
          ),
          Offer(
            title: "My great offer ever",
            description: "Buy 1, get 10 for free",
          ),
          Offer(
            title: "My great offer ever",
            description: "Buy 1, get 10 for free",
          ),
          Offer(
            title: "My great offer ever",
            description: "Buy 1, get 10 for free",
          ),
          Offer(
            title: "My great offer ever",
            description: "Buy 1, get 10 for free",
          ),
          Offer(
            title: "My great offer ever",
            description: "Buy 1, get 10 for free",
          ),
        ],
      ),
    );
  }
}

class Offer extends StatelessWidget {
  //Properties are typically final

  final String title;
  final String description;

  const Offer({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        child: Card(
          elevation: 7,
          color: Colors.amber.shade50,
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/background.png"))),
            child: Column(
              children: [
                Container(
                  color: Colors.amber.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      color: Colors.amber.shade50,
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    color: Colors.amber.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
