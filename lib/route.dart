import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_example/screen/credit_screen.dart';
import 'package:layout_example/screen/history_screen.dart';
import 'package:layout_example/screen/main_screen.dart';

class RouteGenerator {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (context) => MainScreen(),
        );
        break;
      case '/history':
        return CupertinoPageRoute(
          builder: (context) => HistoryScreen(),
        );
        break;
      case '/credit':
        return CupertinoPageRoute(
          builder: (context) => CreditScreen(),
        );
        break;
      default:
        return CupertinoPageRoute(
          builder: (context) => MainScreen(),
        );
    }
  }
}
