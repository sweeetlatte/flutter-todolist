import 'package:flutter/material.dart';
import 'widgets/task_widget.dart';
import 'widgets/modal_add.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffde9c9),
      appBar: AppBar(
        title: const Text('Todo List',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300)),
        backgroundColor: const Color(0xff0d0d0d),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 78),
        child: Column(
          children: const [
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
            TaskWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0d0d0d),
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext content) {
                return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: const ModalAdd(),
                );
              });
        },
      ),
    );
  }
}
