import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/todos_model.dart';
part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(const TodosLoaded()) {
    on<LoadTodos>(_onLoadTodos);
    on<ClearTodoText>(_onClearToDoText);
    on<AddTodo>(_onAddToDo);
    on<ChangeStatusTodo>(_onChangeStatusToDo);
    on<DeleteTodos>(_onDeleteToDos);
  }

  void _onLoadTodos(LoadTodos event, Emitter<TodosState> emit) {
    emit(
      TodosLoaded(todos: event.todos),
    );
  }

  void _onClearToDoText(ClearTodoText event, Emitter<TodosState> emit) {}

  void _onAddToDo(AddTodo event, Emitter<TodosState> emit) {}

  void _onChangeStatusToDo(ChangeStatusTodo event, Emitter<TodosState> emit) {}

  void _onDeleteToDos(DeleteTodos event, Emitter<TodosState> emit) {}

  // @override
  // Stream<TodosState> mapEventToState(
  //   TodosEvent event,
  // ) async* {
  //   // TODO: implement mapEventToState
  // }
}
