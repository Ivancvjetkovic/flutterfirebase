import 'package:flutter/material.dart';
import 'package:flutterfirebase/pages/register_page.dart';

import 'login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPAgeState();
}

class _AuthPAgeState extends State<AuthPage> {

bool showLoginPage = true;

void toggleScreens(){

setState(() {
  showLoginPage = !showLoginPage;
});
}
  @override
  Widget build(BuildContext context){
    if(showLoginPage){
      return LoginPage(showRegisterPage: toggleScreens );
    }else {
  return    RegisterPage(showLoginPage: toggleScreens);
    }
  }
}