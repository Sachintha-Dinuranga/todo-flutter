import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class AlertBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;
  AlertBox(
      {super.key,
      required this.controller,
      required this.onSaved,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              autocorrect: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter task name"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(text: "Save", onPressed: onSaved),

                const SizedBox(
                  width: 5,
                ),
                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
