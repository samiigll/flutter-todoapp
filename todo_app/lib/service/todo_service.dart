import 'dart:convert';

import 'package:todo_app/model/todo.dart';
import 'package:http/http.dart' as http;

class TodoService {
  final String baseUrl = "https://dummyjson.com/todos/";

  Future<List<Todo>> getTodos() async {
    final response = await http.get(Uri.parse(baseUrl));
    List<dynamic> resp = jsonDecode(response.body)["todos"];
    List<Todo> todos = List.empty(growable: true);

    resp.forEach((element) {
      todos.add(Todo.fromJson(element));
    });

    return todos;
  }
}
