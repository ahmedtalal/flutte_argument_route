import 'package:argument_rout/Activities/Home.dart';
import 'package:argument_rout/Activities/settings.dart';
import 'package:flutter/material.dart';

var route = <String , WidgetBuilder>{
  Home.homeRoute : (context) => Home() ,
  Settings.settingRoute : (context) => Settings() ,
  
};