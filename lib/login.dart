import 'package:classassignment/home.dart';
import 'package:classassignment/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: SafeArea(
          child: Text("Login Page")
          )
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 100.0),
          child: Container(
            padding: EdgeInsets.all(20),
            width: 350,
            height: 350,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Welcome Back!", style: TextStyle(fontSize: 30)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20, top: 10),
                        width: 310,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            hintText: "enter username",
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        width: 310,
                        margin: EdgeInsets.only(bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            hintText: "Enter password",
                          ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 20),
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

                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                            builder: (context) => Home())
                        );
                      },
                      child: Text("Login"),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Signuppage()
                        ),
                      );
                    },
                    child: Text("sign up?"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
