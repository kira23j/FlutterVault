import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/todo_provider.dart';

class AddTodo extends ConsumerWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController todoControl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: todoControl,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            TextButton(
              onPressed: () {
                ref.read(todoProvider.notifier).addTodo(todoControl.text);
              },
              child: const Text("Add Todo"),
            )
          ],
        ),
      ),
    );
  }
}
