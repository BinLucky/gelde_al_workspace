import 'package:flutter/cupertino.dart';
import 'package:gelde_al_workspace/const/const.dart';
import 'package:gelde_al_workspace/reponsive_ui.dart';
import 'package:sign_button/sign_button.dart';

import 'const.dart';

class LoginWSocial extends StatelessWidget {
  const LoginWSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: kthemeWhite, borderRadius: BorderRadius.circular(40)),
        width: ksSocialContainerWidth,
        height: ResponsiveScaler.blockSizeVertical * 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton.mini(
              buttonType: ButtonType.facebook,
              onPressed: () {},
            ),
            SignInButton.mini(
              padding: ResponsiveScaler.safeBlockHorizontal,
              buttonType: ButtonType.google,
              onPressed: () {},
            ),
            SignInButton.mini(
              padding: ResponsiveScaler.safeBlockHorizontal,
              buttonType: ButtonType.apple,
              onPressed: () {},
            ),
          ],
        ));
  }
}
