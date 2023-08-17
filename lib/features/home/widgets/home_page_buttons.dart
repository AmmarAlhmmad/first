import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  final IconData icon ;
  final String? name;
  final Widget? label;
  const HomePageButton({super.key, required this.icon, required this.name, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(8),
      child:
      ElevatedButton.icon(

        icon: Icon(icon , size: 40,color: Colors.white, ),
        label: label?? Text(name??'', style: TextStyle(
          fontSize: 15,
        ), ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.brown,
          minimumSize: Size(175, 90),
          fixedSize: Size(0, 0),

          shape:
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.brown)
          ),
        ),
        onPressed: () {  },
    ));
  }
}
