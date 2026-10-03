import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SafeArea(child: Text("Details")),),
      body: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("this is details page", style: TextStyle(fontSize: 20),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("Go Back")),
        
          ],
        ),
      ),
      
    );
  }
}
