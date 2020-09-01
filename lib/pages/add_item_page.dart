import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/item.dart';

class MyAddItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          Provider.of<ItemAddNotifier>(context, listen: false).addItem('Hello');
          Navigator.pop(context);
        },
      ),
    );
  }
}
