import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SafeArea(child: Text("Profile"))),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/Screenshot 2026-08-27 141006.png',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, bottom: 5),
                    child: Text(
                      "Name: Bishal Khatri",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  //SizedBox(height: 1),
                  Container(
                    margin: EdgeInsets.only(left: 15, bottom: 5),
                    child: Text(
                      "Age: 20",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15, bottom: 5),
                    child: Text(
                      "Role: Student",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15, bottom: 5),
                    child: Text(
                      "Email: goggle@gmail.com",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 30,),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: TextStyle(fontSize: 20),
                      elevation: 10,
                      foregroundColor: Colors.white70,
                      backgroundColor: Colors.black,
                    ),
                    onPressed: (){},
                    child: Text("Edit")),
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(fontSize: 20),
                    elevation: 10,
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: (){},
                  child: Text("Back"))
            ],
          )
        ],
      ),
    );
  }
}
