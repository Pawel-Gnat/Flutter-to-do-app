import 'package:flutter/material.dart';
import './task_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: "Add a new task", border: OutlineInputBorder())),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TaskButton(text: 'Save', onPressed: onSave),
                const SizedBox(width: 8),
                TaskButton(text: 'Cancel', onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
