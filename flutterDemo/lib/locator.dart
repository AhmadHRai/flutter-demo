import 'package:dio/dio.dart';
import 'package:flutter_app/models/todo.dart';
import 'package:flutter_app/respositories/todo_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future initialize() async {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    validateStatus: (_) => true,
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  ));

  locator.registerSingleton(dio);
  locator.registerLazySingleton(() => TodoRepository());
  //
}
