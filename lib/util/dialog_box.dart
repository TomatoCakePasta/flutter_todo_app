import 'package:flutter/material.dart';
import 'package:flutter_todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({super.key, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Add a new task",
                border: OutlineInputBorder(),
              ),
            ), 

            // buttons -> save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: (){}, color: const Color.fromARGB(255, 78, 244, 84)),

                const SizedBox(width: 10),

                // cancel button
                MyButton(text: "Cancel", onPressed: (){}, color: const Color.fromARGB(255, 243, 90, 79)),
              ],
            ),
          ]
        )
      ),
    );
  }
}