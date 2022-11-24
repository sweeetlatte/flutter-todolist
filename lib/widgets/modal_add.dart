import 'package:flutter/material.dart';

class ModalAdd extends StatelessWidget {
  const ModalAdd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
        color: const Color(0xfffde9c9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TextField(
              style: TextStyle(color: Color(0xff0d0d0d)),
              decoration: InputDecoration(
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0d0d0d)),
                child: const Text('Add task'),
              ),
            ),
          ],
        ));
  }
}