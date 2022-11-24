import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('Todo List',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300)),
        backgroundColor: const Color.fromRGBO(13, 13, 13, 1),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(13, 13, 13, 1),
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
