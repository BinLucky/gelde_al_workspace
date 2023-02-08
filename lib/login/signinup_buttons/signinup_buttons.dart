import 'package:flutter/material.dart';
import '../../const/const.dart';
import '../login_body/const.dart';
import 'button_marker.dart';
import 'const.dart';

class SingInUpButtons extends StatelessWidget {
  const SingInUpButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: ksButtonHeight,
      child: Stack(children: [
        Container(
          height: ksButtonHeight,
          width: ksButtonWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: kthemeBlack),
        ),
        AnimatedContainer(
            duration: const Duration(seconds: 1),
            color: Colors.transparent,
            height: ksButtonHeight,
            width: ksButtonWidth,
            alignment: Alignment.centerRight,
            child: YellowButtonMarker(
                barWidth: barWidth, yellowMarkerWidth: yellowMarkerWidth)),
        Container(
          color: Colors.transparent,
          height: ksButtonHeight,
          width: ksButtonWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  alignment: Alignment.center,
                  width: yellowMarkerWidth,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      kStringSignUp,
                      style: kStyleSignup,
                    ),
                  )),
              Container(
                alignment: Alignment.center,
                width: yellowMarkerWidth,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(kStringSignIn, style: kStyleSignin),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
