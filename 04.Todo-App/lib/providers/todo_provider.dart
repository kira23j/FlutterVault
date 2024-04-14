import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/todo.dart';

final todoProvider = StateNotifierProvider<TodoListNotifier, List<Todo>>((ref) {
  return TodoListNotifier();
});

class TodoListNotifier extends StateNotifier<List<Todo>> {
  TodoListNotifier() : super([]);

  void addTodo(String content) {
    state = [
      ...state,
      Todo(
          todoID: state.isEmpty ? 0 : state[state.length - 1].todoID + 1,
          Content: content,
          completed: false)
    ];
  }

  void completeTodo(int id) {
    state = [
      for (final todo in state)
        if (todo.todoID == id)
          Todo(
            todoID: todo.todoID,
            Content: todo.Content,
            completed: true,
          )
        else
          todo
    ];
  }

  void deleteTodo(int id) {
    state = state.where((todo) => todo.todoID != id).toList();
  }
}
