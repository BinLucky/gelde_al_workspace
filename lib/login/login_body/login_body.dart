import 'package:flutter/material.dart';
import 'package:gelde_al_workspace/const/const.dart';
import '../../reponsive_ui.dart';
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
    ResponsiveScaler.init(context);
    return Container(
      constraints: BoxConstraints(maxHeight: klgphHeight, maxWidth: klgphWidth),
      padding: klgphPadding,
      decoration: klgphDecoration,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        LoginWCredientals(),
        SizedBox(height: spaceSize * 4),
        SingInUpButtons(),
        SizedBox(height: spaceSize * 4),
        LoginWSocial()
      ]),
    );
  }
}
