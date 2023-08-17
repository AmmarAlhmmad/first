import 'package:flutter/material.dart';

class AddReminerdersButtonsSmall extends StatelessWidget {

  String? name;
  Widget? label;
  Color? color;
  AddReminerdersButtonsSmall({super.key, this.name,  this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(1),
        margin: EdgeInsets.all(8),
        child:
        ElevatedButton(

         child:
         Text('$name', style: TextStyle(
           fontSize: 12
         ),),

          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.grey[500],
            minimumSize: Size(79, 50),
            fixedSize: Size(0, 0),
            elevation: 0,

            shape:
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () { },
        ));
  }
}
