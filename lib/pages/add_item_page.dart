import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/item.dart';

class MyAddItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this widget also has access to the item list
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: Center(
        child: Text('Add an item to list'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          // action takes place here
          Provider.of<ItemAddNotifier>(context, listen: false).addItem('Hello');
          Navigator.pop(context);
        },
      ),
    );
  }
}
