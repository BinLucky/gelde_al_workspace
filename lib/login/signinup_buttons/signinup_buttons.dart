import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/const.dart';

import 'button_market.dart';
import 'const.dart';

class SingInUpButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
                    style: kStyleSigninup,
                  ),
                )),
            Container(
              alignment: Alignment.center,
              width: yellowMarkerWidth,
              child: GestureDetector(
                onTap: () {},
                child: Text(kStringSignIn, style: kStyleSigninup),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}

class Forgottens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Text(kStringForgetPass),
    );
  }
}
