import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../const/const.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    //required this.logoSize,
    //required this.logoAnimation,
  }) : super(key: key);

  //final bool logoSize;
  //final Animation logoAnimation;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //flex: logoSize ? 1 : 0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: SvgPicture.asset(logoPath,
            height: deviceWidth / 2 //logoAnimation.value,
            ),
      ),
    );
  }
}
