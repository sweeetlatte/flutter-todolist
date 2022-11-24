import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  TaskWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  var item;

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
            const Icon(
              Icons.check_circle_outline_rounded,
              color: Color(0xff0d0d0d),
            )
          ],
        ),
      ),
    );
  }
}
