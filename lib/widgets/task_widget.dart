import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  TaskWidget({
    Key? key,
    required this.item,
    required this.handleCheckTask,
  }) : super(key: key);

  var item;
  final Function handleCheckTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: const Color(0xff0d0d0d)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(item.name),
            InkWell(
              onTap: () async {
                if (await confirm(
                  context,
                  title: const Text('Confirm'),
                  content: const Text('Would you like to check this task?'),
                  textOK: const Text('Yes',
                      style: TextStyle(color: Color(0xff0d0d0d))),
                  textCancel: const Text('No',
                      style: TextStyle(color: Color(0xff0d0d0d))),
                )) {
                  handleCheckTask(item.id);
                }
                return;
              },
              child: const Icon(
                Icons.check_circle_outline_rounded,
                color: Color(0xff0d0d0d),
              ),
            )
          ],
        ),
      ),
    );
  }
}
