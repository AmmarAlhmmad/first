import 'package:flutter/material.dart';
import 'package:first/reminder_component.dart';

class ReminderScrollBox extends StatelessWidget {

  const ReminderScrollBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        height: 80,
        color: Colors.grey[200],
        child:
        ListView(
          scrollDirection: Axis.horizontal,
            children:  [
              ReminderComponent(title: '1', color: Colors.green,),
              ReminderComponent(title: '2',),
              ReminderComponent(title: '3',),
              ReminderComponent(title: '4',),
              //ReminderComponent(title: '4',),

            ],
          ),

    );

  }
}