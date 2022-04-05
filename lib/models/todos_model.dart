import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String id;
  final String task;
  bool? isComplated;
  bool? isCancelled;

  Todo(
      {required this.id,
      required this.task,
      this.isCancelled,
      this.isComplated}) {
    isCancelled = isCancelled ?? false;
    isComplated = isComplated ?? false;
  }

  Todo copyWith({
    String? id,
    String? task,
    bool? isCancelled,
    bool? isComplated,
  }) {
    return Todo(
      id: id ?? this.id,
      task: task ?? this.task,
      isComplated: isComplated ?? this.isComplated,
      isCancelled: isCancelled ?? this.isCancelled,
    );
  }

  @override
  List<Object?> get props => [
        id,
        task,
        isComplated,
        isCancelled,
      ];
  static List<Todo> todos = [
    Todo(id: '1', task: 'Sample ToDo 1'),
    Todo(id: '2', task: 'Sample ToDo 2'),
    Todo(id: '3', task: 'Sample ToDo 3'),
  ];
}
