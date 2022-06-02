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
      backgroundColor: const Color(0xFF2F2F2F),
      body: loginBody(),
      resizeToAvoidBottomInset: false,
    );
  }
}

class loginBody extends StatefulWidget {
  loginBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return loginBodyState();
  }
}

class loginBodyState extends State<loginBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation logoAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _controller.addListener(() {
      setState(() {});
    });
    logoAnimation = Tween<double>(begin: 300, end: 100)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4, 8, 4, 0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 55),
              child: SvgPicture.asset(
                logoPath,
                height: logoAnimation.value,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
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
                            contentPadding:
                                const EdgeInsets.fromLTRB(22, 20, 22, 20),
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
                        //onEditingComplete: () => _controller.reverse(),
                        onTap: () {
                          _controller.forward();
                        },
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.visibility_off,
                              color: Color(0xFFE0E0E0),
                              size: 30,
                            ),
                            contentPadding:
                                const EdgeInsets.fromLTRB(22, 20, 22, 20),
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
                    Stack(children: [
                      Container(
                        height: 56,
                        width: 338,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF2F2F2F)),
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
                                  onTap: () {}),
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
                    ])
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
    ;
  }
}
