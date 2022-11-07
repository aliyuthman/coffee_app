import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../datamanager.dart';

class OrderPage extends StatelessWidget {
  final DataManager dataManager;
  const OrderPage({Key? key, required this.dataManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Hey! Order page");
  }
}
