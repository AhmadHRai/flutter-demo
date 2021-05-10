import 'package:flutter/material.dart';
import 'package:flutter_app/locator.dart';
import 'package:flutter_app/models/todo.dart';
import 'package:flutter_app/respositories/todo_repository.dart';
import 'package:flutter_app/widgets/todo_tile.dart';

class TodoIndexPage extends StatefulWidget {
  @override
  _TodoIndexPageState createState() => _TodoIndexPageState();
}

class _TodoIndexPageState extends State<TodoIndexPage> {
  final repository = locator<TodoRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Todo>>(
        future: repository.getAll(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return TodoTile(todo: snapshot.data[index]);
              },
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
