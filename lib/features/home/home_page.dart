
import 'package:first/app/models/task_model.dart';
import 'package:first/app/services/data_service.dart';
import 'package:first/features/home/widgets/home_page_buttons.dart';
import 'package:first/features/home/widgets/reminders_scroll_box.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    DataService.instance?.getTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.brown[400],

        flexibleSpace: Container(
          margin: EdgeInsets.fromLTRB(17, 40, 2, 0),

          child:

          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 25,
              ),
              Spacer(), Icon(
                Icons.notifications,
                size: 30,
              )],
          ),
        )
        ,
      ),

      body:
      Container(
        margin:  EdgeInsets.fromLTRB(0, 10, 0, 0),
        child:   Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Container(
                  margin:EdgeInsets.fromLTRB(10, 0, 0, 0) ,
                  child: const Text('Good afternoon ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    )
                    ,)),

              Container(
                  margin:EdgeInsets.fromLTRB(10, 0, 0, 0) ,
                  child: Text('AMMAR!',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ))),
              Container(
                  margin: EdgeInsets.fromLTRB(4, 10, 0, 0),
                  child:
                  Text('Your events for today ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold
                      ))),

              SizedBox(height:10),

              ReminderScrollBox(tasks: DataService.instance?.todayTasks()),

              Container(
                  margin: EdgeInsets.fromLTRB(4, 10, 0, 0),
                  child: Text('Your events for next 7 days ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold
                      )
                  )
              ),
              SizedBox(height:10),

        ReminderScrollBox(tasks: DataService.instance?.weekTasks()),
        SizedBox(height:25),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomePageButton(name : 'Unscheduled', icon: Icons.list, label: null)
                    , HomePageButton(name : 'Scheduled', icon: Icons.calendar_month,label:null)],
                  ), HomePageButton(name : null, icon: Icons.add, label: Text('Create New button',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),

    ],

              ),]

        ),
      )

      ,
      bottomNavigationBar: BottomNavigationBar(

          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.brown[100]),
              label: ('Home'),
              backgroundColor: Colors.grey[70],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color: Colors.brown[100]),
              label: ('Calendar'),
              backgroundColor: Colors.grey[70],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list, color: Colors.brown[100],),
              label: ('All Tasks'),
              backgroundColor: Colors.grey[70],
            ), BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.brown[100]),
              label: ('Settings'),
              backgroundColor: Colors.grey[70],
            )
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.brown[900],
          iconSize: 33,
          onTap: _onItemTapped,
          elevation: 100
      ),
    );

  } }