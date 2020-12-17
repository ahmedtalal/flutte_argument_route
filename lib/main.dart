import 'package:argument_rout/Activities/Home.dart';
import 'package:argument_rout/Activities/RoutingModel/Routings.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp()) ;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.homeRoute,
      routes: route ,
    );
  }
}