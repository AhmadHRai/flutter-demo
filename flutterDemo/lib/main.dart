import 'package:flutter/material.dart';
import 'package:flutter_app/pages/todo/index_page.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();

  runApp(new MaterialApp(
    title: "Layouts",
    home: new TodoIndexPage(),
  ));
}
