import 'package:flutter/material.dart';
import 'package:todolist/modal/task.dart';
import 'widgets/task_widget.dart';
import 'widgets/modal_add.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItem> tasks = [
    // DataItem(id: 1, name: 'Read a book'),
    // DataItem(id: 2, name: 'Walk in nature'),
    // DataItem(id: 3, name: 'Meditate'),
    // DataItem(id: 4, name: 'Sleep in on the weekend'),
    // DataItem(id: 5, name: 'Watch the clouds'),
    // DataItem(id: 6, name: 'Unplug from social media'),
    // DataItem(id: 7, name: 'Colour in, draw, or paint'),
    // DataItem(id: 8, name: 'Do yoga'),
    // DataItem(id: 9, name: 'Breathe'),
    // DataItem(id: 10, name: 'Exercise'),
    // DataItem(id: 11, name: 'Listen to music or a nature soundscape'),
    // DataItem(id: 12, name: 'Dance'),
    // DataItem(id: 13, name: 'Spend quality time with a loved one'),
    // DataItem(id: 14, name: 'Look at the stars'),
    // DataItem(id: 15, name: 'Take a bath'),
    // DataItem(id: 16, name: 'Switch off your smartphone for 24 hours'),
    // DataItem(id: 17, name: 'Watch the sunrise or sunset'),
    // DataItem(id: 18, name: 'Get out in the garden'),
    // DataItem(id: 19, name: 'Light a candle'),
    // DataItem(id: 20, name: 'Go to bed early'),
    // DataItem(id: 21, name: 'Call a friend that makes you laugh'),
    // DataItem(id: 22, name: 'Stretch'),
    // DataItem(id: 23, name: 'Take a nap'),
    // DataItem(id: 24, name: 'Go for a swim at your local beach'),
    // DataItem(id: 25, name: 'Start a gratitude journal'),
    // DataItem(id: 26, name: 'Do a jigsaw puzzle'),
    // DataItem(id: 27, name: 'Watch a comedian on YouTube'),
  ];

  void _handleAddTask(String name) {
    final newItem = DataItem(id: DateTime.now().toString(), name: name);
    if (name.isEmpty) {
      return;
    }
    setState(() {
      tasks.add(newItem);
    });
  }

  void _handleCheckTask(String id) {
    setState(() {
      tasks.removeWhere((task) => task.id == id);
    });
  }

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
          children: tasks
              .map((task) => TaskWidget(
                    item: task,
                    handleCheckTask: _handleCheckTask,
                  ))
              .toList(),
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
                  child: ModalAdd(addTask: _handleAddTask),
                );
              });
        },
      ),
    );
  }
}
