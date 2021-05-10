import 'package:flutter/material.dart';
import 'package:flutter_app/models/todo.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;

  const TodoTile({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      leading: Text(todo.completed ? 'OK' : 'NO'),
    );
  }
}
