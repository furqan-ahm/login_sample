import 'package:flutter/material.dart';
import 'package:login_sample/home.dart';
import 'package:login_sample/login.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  bool LoggedIn=false;

  void LogIn(){
    setState(() {
      LoggedIn=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: LoggedIn?const HomePage():LoginPage(logIn: LogIn,),
    );
  }
}
