import 'package:first/app/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:first/features/home/widgets/reminder_component.dart';

class ReminderScrollBox extends StatelessWidget {
  final List<TaskModel>? tasks;
  const ReminderScrollBox({super.key,required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        height: 120,
        color: Colors.grey[200],
        child:
        ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: tasks?.length,
            itemBuilder: (_, index) {
            return SizedBox(width: 150, height: 150,child: ReminderComponent(task: tasks![index]));
            }
          ),

    );

  }
}