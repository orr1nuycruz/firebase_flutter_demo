import 'package:firebase_app_exercise/models/user.dart';
import 'package:firebase_app_exercise/screens/authenticate/authenticate.dart';
import 'package:firebase_app_exercise/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // return either Home or Authenticate Widget
    if(user == null){
      return Authenticate();
    } else{
      return Home();
    }
  }
}