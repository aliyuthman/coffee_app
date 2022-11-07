import 'package:coffee_app/datamanager.dart';
import 'package:flutter/material.dart';

import 'pages/menupage.dart';
import 'pages/orderpage.dart';
import 'pages/offerspage.dart';

void main() {
  runApp(const MyApp());
}

/*

Widget Tree
  MyApp
    MyHomePage
      HelloWord
        Text
*/

class Greet extends StatefulWidget {
  const Greet({Key? key}) : super(key: key);

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  var name = "";
  @override
  Widget build(BuildContext context) {
    // var name = "Aliyu Usman";
    // var name = "";
    // return Text("Hello $name");

    // We can only return one widget

    var greetStyle = TextStyle(fontSize: 24);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Hello $name",
                style: greetStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: TextField(
              onChanged: (value) => setState(() {
                    name = value;
                  })),
        ),
      ],
    );

    //**
    //StateLess vs Stateful
    //
    //
    //
    // */
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Hello World!");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dataManager = DataManger();
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentWidgetPage = const Text("!!!");

    switch (selectedIndex) {
      case 0:
        currentWidgetPage = MenuPage(
          dataManager: dataManager,
        );

        break;

      case 1:
        currentWidgetPage = const OffersPage();
        break;

      case 2:
        currentWidgetPage = OrderPage(
          dataManager: dataManager,
        );
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset("images/logo.png")),
      ),

      bottomNavigationBar: BottomNavigationBar(

          //Bottom Nav Selection
          currentIndex: selectedIndex,
          onTap: (newIndex) {
            // selectedIndex = newIndex; //changing the state here won't work
            //stateful widget require the setState function to effect the state change

            setState(() {
              selectedIndex = newIndex;
            });
          },

          //Bottom Nav Stying
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.yellow.shade400,
          unselectedItemColor: Colors.brown.shade50,

          //Bottom Nav Items
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: "Offers",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              label: "Order",
            )
          ]),
      body: currentWidgetPage,
      // body: Greet(),
    );
  }
}
