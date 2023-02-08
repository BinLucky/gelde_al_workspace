import 'package:flutter/material.dart';
import '../../const/const.dart';
import '../login_body/const.dart';
import 'const.dart';

class LoginWCredientals extends StatelessWidget {
  const LoginWCredientals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: klgphElementHeight,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: lfTextFieldSize,
          child: TextFormField(
              enableInteractiveSelection: true, decoration: kdEmailField),
        ),
        SizedBox(height: spaceSize),
        SizedBox(
          height: lfTextFieldSize,
          child: TextFormField(

              //onEditingComplete: () => _controller.reverse(),
              decoration: kdPasswordField),
        ),
        SizedBox(
          height: spaceSize,
        ),
        const Forgottens()
      ]),
    );
  }
}

class Forgottens extends StatelessWidget {
  const Forgottens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Text(
        kStringForgetPass,
        style: kStyleForgotPassword,
      ),
    );
  }
}
