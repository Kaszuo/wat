import 'package:flutter/material.dart';
import 'package:layout_example/route.dart';
import 'package:layout_example/screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
