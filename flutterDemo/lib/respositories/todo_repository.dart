import 'package:flutter_app/locator.dart';
import 'package:flutter_app/models/todo.dart';
import 'package:flutter_app/services/todo_service.dart';

class TodoRepository {
  final api = TodoService();

  Future<List<Todo>> getAll() async {
    final response = await api.index();

    if (response.statusCode == 200) {
      return (response.data as List).map((todo) {
        return Todo.fromMap(todo);
      }).toList();
    }

    return [];
  }
}
