import 'package:flutter/material.dart';
import 'package:gelde_al_workspace/login/login_body/login_body.dart';
import 'package:gelde_al_workspace/reponsive_ui.dart';
import 'const/const.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        /*builder: (context, widget) => ResponsiveWrapper(
              child: ClampingScrollWrapper.builder(context, widget!),
              breakpoints: const [
                ResponsiveBreakpoint.resize(350, name: MOBILE),
                ResponsiveBreakpoint.autoScale(600, name: TABLET),
                ResponsiveBreakpoint.resize(800, name: DESKTOP),
                ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
              ],
            ),*/
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("Merhaba")),
          body: Center(
              child: Container(
            child: Text("Merhaba"),
          )), //LoginBody()),
          backgroundColor: kmainScaffoldColor,
          resizeToAvoidBottomInset: false,
        ));
  }
}*/

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    getdeviceHeigt();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginBody(),
        backgroundColor: kmainScaffoldColor,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
