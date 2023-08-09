import 'package:first/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  )) ;
}
class Home extends StatelessWidget {
   const Home({super.key}) ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: const Text("cool"),
        backgroundColor: Colors.red[900],
      ),
       body:

       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget> [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Text("hello"),
           TextButton(

               onPressed: (){},
               child: Text("click here"),
               style: TextButton.styleFrom(
                 backgroundColor: Colors.redAccent,)
           ),
           Container(
            padding: EdgeInsets.all(30),
            child: ElevatedButton.icon(
              label: Text("hello"),
              onPressed: (){},
              icon: Icon(Icons.mail),
            ),
           ),
         ],
       ),
          Container(
            padding: EdgeInsets.all(15),
            color: Colors.amber,
            child: Text("amber"),
          ),
           Container(
             padding: EdgeInsets.all(30),
             color: Colors.teal,
             child: Text("teal"),
           ),
           Container(
             padding: EdgeInsets.all(45),
             color: Colors.redAccent,
             child: Text("red"),
           )
         ],
       ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text("click"),
        backgroundColor: Colors.red[700],
      ),
    );

  }
}




