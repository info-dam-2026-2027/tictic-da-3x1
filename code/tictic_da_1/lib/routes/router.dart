import 'package:flutter/material.dart';
import 'package:tictic_da_1/screens/welcome_screen.dart';

import '../screens/login_screen.dart';
import '../screens/register_screen.dart';

Map<String, WidgetBuilder> router = {
  WelcomeScreen.routeName : (BuildContext context) => WelcomeScreen(),
  LoginScreen.routeName : (BuildContext context) => LoginScreen(),
  RegisterScreen.routeName : (BuildContext context) => RegisterScreen(),
};