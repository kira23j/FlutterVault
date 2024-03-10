import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

// This widget is the root of your application.
class Home extends ConsumerWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(counterProvider);
    CounterNotifier counterController = ref.watch(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Second()));
                },
                child: Text("go to secound screen")),
            Text(
              "Counter:$counter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                counterController.add();
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}

class Second extends ConsumerWidget {
  const Second({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(counterProvider);
    CounterNotifier counterController = ref.watch(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod secound"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter on secound screen:$counter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Second()));
              },
              child: const Text("Go to second screen"),
            )
          ],
        ),
      ),
    );
  }
}
