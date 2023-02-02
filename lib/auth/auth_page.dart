import 'package:flutter/material.dart';
import 'package:flutter_getx/auth/login_page.dart';
import 'package:flutter_getx/auth/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  // initially show login page
  bool showLoginPage = true;

  void toogleScreen(){
   setState(() {
     showLoginPage = !showLoginPage;
   });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
    return LoginPage(showRegisterPage: toogleScreen);
  } else {
    return RegisterPage(showLoginPage: toogleScreen);
  }
  }
}