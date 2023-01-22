import 'package:flutter/material.dart';
import 'package:gelde_al_workspace/login/login_body/login_body.dart';
import 'const/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(child: LoginBody()),
          backgroundColor: kmainScaffoldColor,
          resizeToAvoidBottomInset: false,
        ));
  }
}
