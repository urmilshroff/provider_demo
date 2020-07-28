import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/list.dart';
import 'package:provider_demo/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        builder: (context) => ListModel(),
        child: MyHomePage(),
      ),
    );
  }
}
