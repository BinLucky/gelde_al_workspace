import 'package:flutter/cupertino.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:gelde_al_workspace/const/const.dart';

import 'const.dart';

class LoginWSocial extends StatelessWidget {
  const LoginWSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: kthemeWhite, borderRadius: BorderRadius.circular(40)),
        width: ksSocialContainerWidth,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.facebook,
              mini: true,
            ),
            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.google,
              mini: true,
            ),
            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.apple,
              mini: true,
            ),
          ],
        ));
  }
}
