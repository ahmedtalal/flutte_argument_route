import 'package:argument_rout/Activities/settings.dart';
import 'package:argument_rout/Models/Students.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static final String homeRoute = "/home" ;
  String name ;
  int age ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home screen" ,
        ),
        backgroundColor: Colors.orange ,
      ),
      body: Center(
        child: Column(
          children: [
            // start textfield

            // name container--------------->>>
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  labelText: "Full name" ,
                  labelStyle: TextStyle(
                    color: Colors.blue ,
                    fontSize: 18 ,
                    fontWeight: FontWeight.bold ,
                  ),
                  contentPadding: const EdgeInsets.all(5) ,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange ,
                      width: 2 ,
                    ),
                    borderRadius: BorderRadius.circular(10) ,
                  ),
                ),
              onChanged: (value){
                name = value ;
              },
              ) ,
              margin: const EdgeInsets.all(12),
            ),
            

            // age container------------------->>>>
            Container(
              margin: const EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your age",
                  labelText: "Age",
                  labelStyle: TextStyle(
                    color: Colors.blue ,
                    fontSize: 18 ,
                    fontWeight: FontWeight.bold ,
                  ),
                  contentPadding: const EdgeInsets.all(5) ,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue , width: 2) ,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value){
                  age = value as int ;
                },
              ),
            ) ,
            // end textfield

            // start raisedButton
            RaisedButton(
              child: Text(
                "submit" ,
              ),
              onPressed: (){
                Students st = new Students(name: name , age:age) ;
                Navigator.pushNamed(context, Settings.settingRoute , arguments: st) ;
              },
            ) ,
            //end raisedButton 
            
          ],
        ),
      ),
    );
  }
}