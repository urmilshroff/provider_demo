import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/item.dart';
import 'package:provider_demo/pages/add_item_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: Consumer<ItemAddNotifier>(
        builder: (context, itemAddNotifier, child) => ListView.builder(
          itemCount: itemAddNotifier.itemList.length,
          itemBuilder: (context, index) =>
              Center(child: Text(itemAddNotifier.itemList[index].itemName)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyAddItemPage(),
          ),
        ),
      ),
    );
  }
}
