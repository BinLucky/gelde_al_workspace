import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF2F2F2F),
      body: loginBody(),
      resizeToAvoidBottomInset: false,
    );
  }
}

class loginBody extends StatelessWidget {
  const loginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            logoPath,
            height: 10,
          ),
          loginGroupContainer()
        ],
      )),
    );
  }
}

class loginGroupContainer extends StatelessWidget {
  const loginGroupContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        color: Color(0xFFE5E5E5),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 80, 30, 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.person,
                      color: Color(0xFFE0E0E0),
                      size: 35,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
                    hintText: "E-posta adresinizi girin",
                    hintStyle: GoogleFonts.lato(
                      color: Color(0xFFE0E0E0),
                      fontSize: 18,
                    ),
                    fillColor: Color(0xFFFFFFFF),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)))),
            TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.visibility_off,
                      color: Color(0xFFE0E0E0),
                      size: 30,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
                    hintText: "E-posta adresinizi girin",
                    hintStyle: GoogleFonts.lato(
                      color: Color(0xFFE0E0E0),
                      fontSize: 18,
                    ),
                    fillColor: Color(0xFFFFFFFF),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)))),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "Şifremi Unuttum",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            loginButtonGroup()
          ],
        ),
      ),
    );
  }
}

class loginButtonGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginButtonGroupState();
  }
}

class LoginButtonGroupState extends State<loginButtonGroup> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: [
      Container(
        height: 56,
        width: 338,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xFF2F2F2F)),
      ),
      Positioned(
          top: 2,
          left: 185,
          child: Container(
            width: 148,
            height: 51,
            decoration: BoxDecoration(
                color: const Color(0xFFEBFF00),
                borderRadius: BorderRadius.circular(15)),
          )),
      SizedBox(
        height: 56,
        width: 338,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: GestureDetector(
                  child: const Text("KAYIT OL",
                      style: TextStyle(
                          color: Color(0xFFEBFF00),
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  onTap: () {
                    // declorationWidthSize = 330;
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text("GİRİŞ",
                  style: TextStyle(
                      color: Color(0xFF2F2F2F),
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
          ],
        ),
      )
    ]);
  }
}
