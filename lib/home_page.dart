import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   final String? title;
   final Color? color;
   const HomePage({super.key, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.redAccent,
      margin: EdgeInsets.all(8),
      height: 200,
      width: 200,
      child: Text('Title ${title ?? ''}', style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),),
    );
  }
}
