import 'package:flutter/material.dart';
import 'package:flutter_hello_world/screens/login_screen.dart';
import 'package:flutter_hello_world/screens/register_screen.dart';

class AppRoutes {
  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => Login(),
      authRegister: (context) => Register()
    };
  }
}
