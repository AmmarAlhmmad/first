import 'package:flutter/material.dart';

class ReminderComponent extends StatelessWidget {
  final String? title;
  final Color? color;
  const ReminderComponent({super.key, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.redAccent,
      margin: EdgeInsets.all(8),
      child:
          Row(
              children: <Widget>[Checkbox(
            value: true, onChanged: (bool? value) {  },
          ), Column(
                  children: <Widget>[Icon(Icons.local_laundry_service),
                    Text('laundry')
                  ])
  ]),


      // Text('Title ${title ?? ''}', style: TextStyle(
      //   color: Colors.white,
      //   fontSize: 18,
      // ),),
    );
  }
}
bool isChecked = false;