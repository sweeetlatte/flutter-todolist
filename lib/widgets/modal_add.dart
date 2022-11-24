import 'package:flutter/material.dart';

class ModalAdd extends StatelessWidget {
  ModalAdd({
    Key? key,
    required this.addTask,
  }) : super(key: key);

  final Function addTask;

  // có thể dùng biến để giữ giá trị sau đó set lại trong onChange (line 24 -> 26)
  // String textValue = '';

  // hoặc dùng controller sau đó truy cập bằng controller.text
  TextEditingController controller = TextEditingController();
  void _handleOnClick(BuildContext context) {
    final name = controller.text;
    addTask(name);
    controller.text = '';
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
        color: const Color(0xfffde9c9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              // onChanged: (text) {
              //   textValue = text;
              // },
              style: const TextStyle(color: Color(0xff0d0d0d)),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xff0d0d0d)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xff0d0d0d)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xff0d0d0d)),
                ),
                labelText: 'Input your task here',
                labelStyle: TextStyle(
                  color: Color(0xff0d0d0d), //<-- SEE HERE
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 42,
              child: ElevatedButton(
                onPressed: (() => _handleOnClick(context)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0d0d0d)),
                child: const Text('Add task'),
              ),
            ),
          ],
        ));
  }
}
