import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/const.dart';
import 'const.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: kmainScaffoldColor,
        body: LoginBody(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}

class LoginBody extends StatefulWidget {
  LoginBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginBodyState();
  }
}

class LoginBodyState extends State<LoginBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation logoAnimation;
  late Animation buttonAnimation;
  bool logoSize = true;

/*##### ANIMATIONS , LOGO SIZE #####*/
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _controller.addListener(() {
      setState(() {});
    });
    logoAnimation = Tween<double>(begin: deviceWidth / 2, end: deviceWidth / 4)
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
/*##### ANIMATIONS , LOGO SIZE #####*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Logo(logoSize: logoSize, logoAnimation: logoAnimation),
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
                        child: const LoginFields()),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Şifremi Unuttum",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ButtonGroup(
                        controller: _controller,
                        deviceWidth: deviceWidth,
                        barWidth: barWidth,
                        yellowMarkerWidth: yellowMarkerWidth,
                        onButtonPressed: () {
                          setState(() {
                            debugPrint("State reloaded");
                          });
                        }),
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

class ButtonGroup extends StatelessWidget {
  ButtonGroup({
    Key? key,
    required this.deviceWidth,
    required this.barWidth,
    required this.yellowMarkerWidth,
    required this.controller,
    required this.onButtonPressed,
  }) : super(key: key);

  final AnimationController controller;
  final double deviceWidth;
  final double barWidth;
  final double yellowMarkerWidth;
  final VoidCallback onButtonPressed;
  bool markerPosition = false;

  @override
  Widget build(BuildContext context) {
    debugPrint("Button Group Rebuilded");
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(children: [
          Container(
            height: 56,
            width: deviceWidth * 0.86,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: kthemeBlack),
          ),
          AnimatedContainer(
              duration: const Duration(seconds: 1),
              color: Colors.transparent,
              height: 56,
              width: deviceWidth * 0.86,
              alignment:
                  markerPosition ? Alignment.centerRight : Alignment.centerLeft,
              child: YellowButtonMarker(
                  barWidth: barWidth, yellowMarkerWidth: yellowMarkerWidth)),
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
                  child: GestureDetector(
                    onTap: () {
                      markerPosition = markerPosition ? false : true;
                      debugPrint(markerPosition.toString());
                      onButtonPressed();
                    },
                    child: Text("KAYIT OL",
                        style: TextStyle(
                            color: markerPosition ? kthemeYellow : kthemeBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: yellowMarkerWidth,
                  child: GestureDetector(
                    onTap: onButtonPressed,
                    child: Text("GİRİŞ",
                        style: TextStyle(
                            color: markerPosition ? kthemeBlack : kthemeYellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                ),
              ],
            ),
          )
        ]);
      },
    );
  }
}

class LoginFields extends StatelessWidget {
  const LoginFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
          enableInteractiveSelection: true,
          decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.person,
                color: kinputWhite,
                size: cIconSize,
              ),
              contentPadding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
              hintText: "E-posta adresinizi girin",
              hintStyle: GoogleFonts.lato(
                color: kinputWhite,
                fontSize: 18,
              ),
              fillColor: kinputWhite,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)))),
      const SizedBox(height: 10),
      TextFormField(
          //onEditingComplete: () => _controller.reverse(),

          decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.visibility_off,
                color: kinputWhite,
                size: 30,
              ),
              contentPadding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
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
    ]);
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.logoSize,
    required this.logoAnimation,
  }) : super(key: key);

  final bool logoSize;
  final Animation logoAnimation;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: logoSize ? 1 : 0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: SvgPicture.asset(
          logoPath,
          height: logoAnimation.value,
        ),
      ),
    );
  }
}
