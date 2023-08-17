import 'package:flutter/material.dart';

class AddReminerdersButtons extends StatefulWidget {
  IconData? icon;

  String? name;
  Widget? label;
  Color? color;

  AddReminerdersButtons(
      {super.key, this.name, this.label, this.color, this.icon});

  @override
  State<AddReminerdersButtons> createState() => _AddReminerdersButtonsState();
}

class _AddReminerdersButtonsState extends State<AddReminerdersButtons> {
    bool? choice;
    int? _value;

   @override
   Widget build(BuildContext context) {
     return Container(
       height: 80,
         width: 179,
         color: Colors.brown[600],
         padding: EdgeInsets.all(1),
         margin: EdgeInsets.all(8),
         child:

             Wrap(
     children:
     List.generate(1,
     (int index) {
     // choice chip allow us to
     // set its properties.
     return ChoiceChip(

     avatar: Icon(Icons.list),
     label: Text('Unscheduled'),
     padding: EdgeInsets.all(2),


     selectedColor: Colors.green,
     selected: _value == index,
     onSelected: (bool selected) {
     setState(() {
     _value = selected ? index : null ;}) ;
     }
     );
     }

     ))  );

         // ElevatedButton(
         //
         //   child:
         //
         //   Text('$name', style: TextStyle(
         //       fontSize: 15
         //   ),),
         //
         //   style: ElevatedButton.styleFrom(
         //     backgroundColor: color ?? Colors.grey[500],
         //     minimumSize: Size(170, 80),
         //     fixedSize: Size(0, 0),
         //     elevation: 0,
         //
         //     shape:
         //     RoundedRectangleBorder(
         //       borderRadius: BorderRadius.circular(20.0),
         //     ),
         //   ),
         //   onPressed: () { },
         // ));

   }
}