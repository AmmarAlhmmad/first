import 'package:first/app/models/task_model.dart';
import 'package:flutter/material.dart';

class ReminderComponent extends StatelessWidget {
  final TaskModel task;
  const ReminderComponent({super.key,required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(8),
      child:
          Row(
              children: <Widget>[
                Expanded(
                flex: 1,
                child:Checkbox(
                value: true, onChanged: (bool? value) {  },
              )
                ),
                Expanded(
                 flex: 4,
                  child: Column(
                children:[
                  Expanded(
                    flex:3,
                  child:
                    Icon
                      (Icons.local_laundry_service,
                      size: 90,
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child:Expanded(
                        flex: 1,
                        child:
                        Text(task.title??'', style: TextStyle(fontSize: 12),)
                    ))]) ,



    )]) );
  }
}
bool isChecked = false;