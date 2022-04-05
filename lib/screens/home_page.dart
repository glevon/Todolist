import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/screens/to_do_list.dart';
import '../bloc/todols_bloc.dart';
import 'list_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do LIST"),
      ),
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state is TodosLoading) {
            return const CircularProgressIndicator();
          }
          if (state is TodosLoaded) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your Task',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        onPressed: () {},
                        child: const Text('Add'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 219, 100, 91),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        onPressed: () {},
                        child: const Text('Clear'),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(
                          "$index",
                          style: const TextStyle(fontSize: 20),
                        ),
                        title: const ListItem(state.todos[index]),
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return const Text("Something went wrong");
        },
      ),
    );
  }
}
