import 'package:argument_rout/Models/Students.dart';
import 'package:flutter/material.dart';


class Settings extends StatelessWidget {
  static final String settingRoute = "/settings" ;
  @override
  Widget build(BuildContext context) {
    Students st = ModalRoute.of(context).settings.arguments ;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings page" ,
        ),
        backgroundColor: Colors.blue ,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120,) ,

            // name container
            Container(
              child: Center(
                child: Text(
                  "the name is : ${st.name}"
                ),
              ),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10) ,
                border: Border.all(
                  color: Colors.blue ,
                  width: 2 ,
                ),
              ),
              margin: const EdgeInsets.all(12),
            ),

            // age container 
            Container(
              child: Center(
                child: Text(
                  "the age is : ${st.age}"
                ),
              ),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10) ,
                border: Border.all(
                  color: Colors.blue ,
                  width: 2 ,
                ),
              ),
              margin: const EdgeInsets.all(12),
            ),
          ],
        ),

      ),
    );
  }
}