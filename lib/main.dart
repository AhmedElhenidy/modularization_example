import 'package:authentication_module/main.dart';
import 'package:authentication_module/tameeni.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_module/tameeni.dart';

void main() async{
  await warmingUpSplashScreen();
  await warmingUpTameeni();
  runApp(Tameeni(onIntroFinish: (context){
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AuthenticationWrapper()));
  }));
}



