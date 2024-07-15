import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  Function(bool?)? onChanged;

  TodoList(
      {super.key,
      required this.taskName,
      required this.isChecked,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 25, right: 25),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: isChecked,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),

            //task name
            Text(
              taskName,
              style: TextStyle(
                  fontSize: 16,
                  decoration: isChecked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
