import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/screens/home_page.dart';

import 'bloc/todols_bloc.dart';
import 'models/todos_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosBloc()
            ..add(
              LoadTodos(
                todos: [
                  Todo(id: '1', task: 'Sample ToDo 1'),
                  Todo(id: '2', task: 'Sample ToDo 2'),
                  Todo(id: '3', task: 'Sample ToDo 3'),
                  Todo(id: '4', task: 'Sample ToDo 4'),
                ],
              ),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'To Do List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
