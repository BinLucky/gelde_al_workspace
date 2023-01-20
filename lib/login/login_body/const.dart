import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/const.dart';
import '../login_fields/login_fileds.dart';
import '../signinup_buttons/signinup_buttons.dart';
import '../social_login.dart/social_login.dart';

class LoginButtonPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      height: deviceHeight / 2,
      padding: EdgeInsets.fromLTRB(30, 70, 40, 30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        color: kthemeGrey,
      ),
      child: Column(children: [LoginWCredientals(), LoginWSocial()]),
    );
  }
}

class LoginWCredientals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [LoginFields(), Forgottens(), SingInUpButtons()],
    );
  }
}

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
        child: SvgPicture.asset(logoPath, height: 150 //logoAnimation.value,
            ),
      ),
    );
  }
}
