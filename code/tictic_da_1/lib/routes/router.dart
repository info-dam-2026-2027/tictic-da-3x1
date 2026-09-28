import 'package:flutter/material.dart';
import 'package:tictic_da_1/screens/welcome_screen.dart';

Map<String, WidgetBuilder> router = {
  WelcomeScreen.routeName : (BuildContext context) => WelcomeScreen(),
  ///login' : (BuildContext context) => LoginScreen(),
  //'/register' : (BuildContext context) => RegisterScreen(),
};