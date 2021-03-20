import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  ArticleScreen({Key key}) : super(key: key);

  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Article screen"),
      ),
    );
  }
}
