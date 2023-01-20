import 'package:flutter/material.dart';
import 'const.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Logo(),
        LoginButtonPlaceholder(),
      ],
    );
  }
}
