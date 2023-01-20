import 'package:flutter/material.dart';
import '../../const/const.dart';
import 'const.dart';

class LoginFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(enableInteractiveSelection: true, decoration: kdEmailField),
      const SizedBox(height: 10),
      TextFormField(
          //onEditingComplete: () => _controller.reverse(),
          decoration: kdPasswordField)
    ]);
  }
}
