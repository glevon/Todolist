import 'package:flutter/material.dart';
import 'package:todolist/bloc/todols_bloc.dart';
import 'package:todolist/screens/list_item.dart';

class ToDoList extends StatelessWidget {
  const ToDoList(TodosLoaded state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              "$index",
              style: const TextStyle(fontSize: 20),
            ),
            title: const ListItem(),
          );
        },
      ),
    );
  }
}
