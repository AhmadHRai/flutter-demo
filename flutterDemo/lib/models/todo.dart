class Todo {
  final int id;
  final String title;
  final bool completed;

  Todo.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        completed = map['completed'];
}
