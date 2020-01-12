import 'package:flutter/material.dart';
import 'package:testa/Screens/HomeScreen.dart';
import 'Screens/Test.dart';
import 'Functions/Appthem.dart';
//import 'package:shared_preferences/shared_preferences.dart';

void main() {
//  SharedPreferences prefs = await SharedPreferences.getInstance();
//  bool seen = prefs.getBool( 'seen' );
//  Widget _screen= Test();
//  if( seen == null || seen == false ){
//    _screen =Test();
//  }else{
//    _screen = HomeScreen();
//  }
  return runApp(MaterialApp(
    title: 'Test',
    color: Colors.teal,
    home: Test(),
    theme: MyAppThem.Apptheme ,
    debugShowCheckedModeBanner: false,
  ));
}
