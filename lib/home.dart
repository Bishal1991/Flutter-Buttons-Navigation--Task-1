import 'package:classassignment/add.dart';
import 'package:classassignment/login.dart';
import 'package:classassignment/profile.dart';
import 'package:classassignment/setting.dart';
import 'package:classassignment/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(child: Text("Home")),
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
        margin: EdgeInsets.only(top: 50),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Elevated Button"),
                ),

                FilledButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>settingPage()));
                }, child: Text("go to setting page")),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=> Signuppage())
                  );
                },
                    child: Text("Go to Sign up Page ")
                ),

                TextButton(onPressed: () {}, child: Text("text button")),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilledButton.tonal(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=> addPage()
                        )
                    );
                  },
                  child: Text("Go to Add page"),
                ),

              ],
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
