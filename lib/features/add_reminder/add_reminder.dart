import 'package:first/features/add_reminder/widgets/add_reminder_buttons.dart';
import 'package:first/features/add_reminder/widgets/add_reminder_buttons_small.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class Aupit extends Cubit<int> {
//
//   Aupit(): super(0) ;
// }

class AddReminder extends StatelessWidget  {
  const AddReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: SizedBox.expand(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Container(
                   margin: EdgeInsets.fromLTRB(25, 10, 0, 2),
                  child: Text('Select type of events',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),

                Row(
                  children: [
                    AddReminerdersButtons(icon: Icons.list, name: 'Unscheduled', label: null),
                    AddReminerdersButtons(icon: Icons.calendar_month, name: 'Scheduled', label: null),

                  ],
                ),


          Container(
              margin: EdgeInsets.fromLTRB(25, 10, 0, 6),
              child: Text('Type of the repetation ',
                style: TextStyle(
                  fontSize: 18,
                ),
              )),

          Row(
            children: [
              AddReminerdersButtons(icon: Icons.date_range, name: 'Specific Date', label: null),
              AddReminerdersButtons(icon: Icons.cached, name: 'Whenever', label: null),
            ],
            ),
                Container(
                    margin: EdgeInsets.fromLTRB(25, 10, 0, 6),
                    child: Text('Domain of the reptition ',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AddReminerdersButtonsSmall(name: 'Daily'),
                    AddReminerdersButtonsSmall(name: 'Weekly'),
                    AddReminerdersButtonsSmall(name: 'Monthly'),
                    AddReminerdersButtonsSmall(name: 'Yearly'),



                  ],
                )
          ]),
        ),
      ),
    ));
  }
}
