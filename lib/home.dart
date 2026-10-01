import 'package:classassignment/add.dart';
import 'package:classassignment/login.dart';
import 'package:classassignment/profile.dart';
import 'package:classassignment/setting.dart';
import 'package:classassignment/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum calanderView {day, week, month, year}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  calanderView selected = calanderView.day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade300,
      appBar: AppBar(
        backgroundColor: Color(0xFF386A1F),
        title: SafeArea(child: Text("Home", style: TextStyle(color: Colors.white),)),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()
              )
              );
            },
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://wallpapercave.com/wp/wp12522325.jpg",
              ),
              radius: 17,
            ),

            style: IconButton.styleFrom(shape: const CircleBorder()),
          ),
        ],
      ),

      body: Container(
       // margin: EdgeInsets.only(top: 50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,


          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top:20, bottom: 20, right: 10, left: 10),
              decoration: BoxDecoration(
                color: Color(0xFFD8E6CB)
              ),
             // margin: EdgeInsets.only(top: 5, bottom: 20),
              child: SegmentedButton<calanderView>(
                segments: const <ButtonSegment<calanderView>>[
                  ButtonSegment<calanderView>(value: calanderView.day, label: Text('Day'), icon: Icon(Icons.calendar_view_day)),
                  ButtonSegment(value: calanderView.week, label: Text('Week'), icon: Icon(Icons.calendar_view_week)),
                  ButtonSegment(value: calanderView.month, label: Text('Month'), icon: Icon(Icons.calendar_view_month)),
                  ButtonSegment(value: calanderView.year, label: Text('Year')),
                ],

                selected: <calanderView>{selected},

                onSelectionChanged: (Set<calanderView> newSelection) {
                  setState(() {
                    selected = newSelection.first;
                  });
                },
              ),
            ),

            Container(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Color(0xFFC1F0A5),
              ),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Elevated Button"),
                        ),
                      ),

                      SizedBox(width: 20,),

                      SizedBox(
                        width: 150,
                        child: FilledButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>settingPage()));
                        }, child: Text("setting page")),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        child: OutlinedButton(
                            onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> Signuppage())
                          );
                        },
                            child: Text("Sign up Page ")
                        ),
                      ),

                      SizedBox(width: 20,),

                      SizedBox(
                        width: 150,
                        child: TextButton(
                            onPressed: () {},
                            child: Text("text button")),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  //Row(
                   // children: [
                      FilledButton.tonal(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> addPage()
                              )
                          );
                        },
                        child: Text("Add page"),
                      ),

                  SizedBox(height: 20,),

                    //],
                 // ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginPage()));
        },
        child: Icon(Icons.exit_to_app),
      ),
    );
  }
}
