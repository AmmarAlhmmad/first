
import 'package:first/reminders_scroll_box.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    home: House(),
  )) ;
}
class House extends StatelessWidget {
  const House({key}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:Colors.white,
        appBar: AppBar(
          flexibleSpace: Container(

            margin: EdgeInsets.fromLTRB(1, 40, 1, 1),

            child:
            const Column(
              children: [
                Row(
                  children: [Icon(Icons.photo),Spacer(), Icon(Icons.notifications)],
                ), Text("Welcome"), Text("Ammar!")
            ])
              ,
          ),


    backgroundColor: Colors.brown[400],
    ),
    body:
        Container(
          margin:  EdgeInsets.fromLTRB(0, 10, 0, 10),
          child:   Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [Text("Your events for today!", style: TextStyle(
              fontSize: 22
            ),), SizedBox(height:20), ReminderScrollBox()],
          ),
        )

    ,


      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.red[700],
        child: Text("click"),
      ),
    );

  }
}