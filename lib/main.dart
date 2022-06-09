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
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: kmainScaffoldColor,
        body: loginBody(),
        resizeToAvoidBottomInset: false,
      ),
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
  bool logoSize = true;
  DependedSizes sizeController = DependedSizes();

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _controller.addListener(() {
      setState(() {});
    });
    logoAnimation = Tween<double>(
            begin: sizeController.getdeviceWidth() / 2,
            end: sizeController.getdeviceWidth() / 4)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuint));
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
    //####### DEVICE SCREEN SIZES #######//
    double deviceHeight = sizeController.getdeviceHeigt();
    double deviceWidth = sizeController.getdeviceWidth();
    double barWidth = deviceWidth;
    double yellowMarkerWidth = barWidth * 0.4;
    /* debugPrint("Window Width " + deviceWidth.toString());
    debugPrint("Window Height " + deviceHeight.toString());
    debugPrint("Context Width " + MediaQuery.of(context).size.width.toString());
    debugPrint(
        "Context Height " + MediaQuery.of(context).size.height.toString());*/
    //####### DEVICE SCREEN SIZES #######//

    return SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: logoSize ? 1 : 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: SvgPicture.asset(
                logoPath,
                height: logoAnimation.value,
              ),
            ),
          ),
          Container(
            width: deviceWidth,
            height: deviceHeight / 2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: kthemeWhite,
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 80, 30, 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Focus(
                        onFocusChange: ((value) {
                          if (value) {
                            logoSize
                                ? _controller.forward()
                                : _controller.reverse();
                            logoSize = false;
                          } else {
                            _controller.reverse();
                            logoSize = true;
                          }
                        }),
                        child: Column(children: [
                          TextFormField(
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  suffixIcon: const Icon(
                                    Icons.person,
                                    color: kinputWhite,
                                    size: cIconSize,
                                  ),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(22, 20, 22, 20),
                                  hintText: "E-posta adresinizi girin",
                                  hintStyle: GoogleFonts.lato(
                                    color: kinputWhite,
                                    fontSize: 18,
                                  ),
                                  fillColor: kinputWhite,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(15)))),
                          const SizedBox(height: 10),
                          TextFormField(
                              //onEditingComplete: () => _controller.reverse(),

                              decoration: InputDecoration(
                                  suffixIcon: const Icon(
                                    Icons.visibility_off,
                                    color: kinputWhite,
                                    size: 30,
                                  ),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(22, 20, 22, 20),
                                  hintText: "E-posta adresinizi girin",
                                  hintStyle: GoogleFonts.lato(
                                    color: kinputWhite,
                                    fontSize: 18,
                                  ),
                                  fillColor: kinputWhite,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15))))
                        ])),
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
                        width: deviceWidth * 0.86,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: kthemeBlack),
                      ),
                      Container(
                          color: Colors.transparent,
                          height: 56,
                          width: deviceWidth * 0.86,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: barWidth * 0.003),
                                  child: Container(
                                    width: yellowMarkerWidth,
                                    height: 51,
                                    decoration: BoxDecoration(
                                        color: kthemeYellow,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                )
                              ])),
                      Container(
                        color: Colors.transparent,
                        height: 56,
                        width: deviceWidth * 0.86,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: yellowMarkerWidth,
                              child: const Text("KAYIT OL",
                                  style: TextStyle(
                                      color: kthemeYellow,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: yellowMarkerWidth,
                              child: const Text("GİRİŞ",
                                  style: TextStyle(
                                      color: kthemeBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
