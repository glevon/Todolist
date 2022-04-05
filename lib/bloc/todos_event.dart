part of 'todols_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class LoadTodos extends TodosEvent {
  final List<Todo> todos;

  const LoadTodos({this.todos=const <Todo>[]});

  @override
  List<Object> get props => [todos];
}

class ClearTodoText extends TodosEvent {
    final List<Todo> todo;

  const ClearTodoText({required this.todo});

  @override
  List<Object> get props => [todo];
}

class AddTodo extends TodosEvent {
      final List<Todo> todo;

  const AddTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

class ChangeStatusTodo extends TodosEvent {
      final List<Todo> todo;

  const ChangeStatusTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

class DeleteTodos extends TodosEvent {
      final List<Todo> todo;

  const DeleteTodos({required this.todo});

  @override
  List<Object> get props => [todo];
}
