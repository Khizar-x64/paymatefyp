import 'package:flutter/material.dart';
import 'package:paymatefyp/auth.dart';
import 'package:paymatefyp/pages/home_page.dart';
import 'package:paymatefyp/pages/login_register_page.dart';

class WidgetTree extends StatefulWidget{
  const WidgetTree({Key?key}) :super(key:key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState  extends State<WidgetTree>{
  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context,snapshot){
        if(snapshot.hasData){
          return HomePage();
        }
        else{
          return const LoginPage();
        }
      }
        );
  }
}