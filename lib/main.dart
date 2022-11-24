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
      backgroundColor: const Color(0xfffde9c9),
      appBar: AppBar(
        title: const Text('Todo List',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300)),
        backgroundColor: const Color(0xff0d0d0d),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 74,
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: const Color(0xff0d0d0d)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Do the homework'),
                    Icon(
                      Icons.delete,
                      color: Color(0xff0d0d0d),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0d0d0d),
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
