import 'package:flutter/cupertino.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:gelde_al_workspace/const/const.dart';

import 'const.dart';

class LoginWSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: kthemeWhite, borderRadius: BorderRadius.circular(15)),
        width: ksSocialContainerWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
/**/
