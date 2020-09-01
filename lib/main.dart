import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/item.dart';
import 'package:provider_demo/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider( // better to use MultiProvider
      providers: [
        ChangeNotifierProvider<ItemAddNotifier>(
          create: (context) => ItemAddNotifier(), // returns ItemAddNotifier()
        ),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
