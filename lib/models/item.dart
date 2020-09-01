import 'package:flutter/material.dart';

class Item {
  String itemName;
  Item(this.itemName);
}

class ItemAddNotifier extends ChangeNotifier {
  List<Item> itemList = [];
  void addItem(String name) {
    itemList.add(Item(name));
    notifyListeners();
  }
}
