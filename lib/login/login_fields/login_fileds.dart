import 'package:flutter/material.dart';
import '../login_body/const.dart';
import 'const.dart';

class LoginWCredientals extends StatelessWidget {
  const LoginWCredientals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: klgphElementHeight,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          height: 45,
          child: TextFormField(
              enableInteractiveSelection: true, decoration: kdEmailField),
        ),
        //const SizedBox(height: 10),
        SizedBox(
          height: 45,
          child: TextFormField(

              //onEditingComplete: () => _controller.reverse(),
              decoration: kdPasswordField),
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
