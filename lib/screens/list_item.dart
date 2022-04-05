import 'package:flutter/material.dart';
import 'package:todolist/models/todos_model.dart';

class ListItem extends StatelessWidget {
  const ListItem(Todo todo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Text("dasdsa"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold)),
                onPressed: () {},
                child: const Icon(Icons.done_sharp),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold)),
                onPressed: () {},
                child: const Icon(Icons.delete_sharp),
              ),
            ],
          ),
        )
      ],
    );
  }
}
