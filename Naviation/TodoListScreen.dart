import 'package:flutter/material.dart';
import 'Todo.dart';
import 'DetailScreen.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  // Tạo danh sách 20 Todo
  static final todos = List<Todo>.generate(
    20,
        (i) => Todo(
      'Cái Đầu $i',
      'A description of what needs to be done for Todo $i',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}