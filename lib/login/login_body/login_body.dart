import 'package:flutter/material.dart';
import '../login_fields/login_fileds.dart';
import '../signinup_buttons/signinup_buttons.dart';
import '../social_login.dart/social_login.dart';
import '../logo/logo.dart';
import 'const.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Logo(),
        LoginButtonPlaceholder(),
      ],
    );
  }
}

class LoginButtonPlaceholder extends StatelessWidget {
  const LoginButtonPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: klgphWidth,
      height: klgphHeight,
      padding: klgphPadding,
      decoration: klgphDecoration,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            LoginWCredientals(),
            SingInUpButtons(),
            LoginWSocial()
          ]),
    );
  }
}
