import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/constants/tasktype.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key, required this.task});
  final Task task;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.task.type == Tasktype.note
                ? Image.asset("lib/assets/images/category_1.png")
                : Image.asset("lib/assets/images/category_2.png"),
            Column(
              children: [
                Text(
                  widget.task.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                Text(
                  widget.task.description,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Checkbox(
                value: isChecked,
                onChanged: (val) => {
                      setState(() {
                        isChecked = val!;
                      })
                    })
          ],
        ),
      ),
    );
  }
}
