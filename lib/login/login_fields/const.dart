import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/const.dart';

String kStringMailHint = "E-posta adresinizi girin";
String kStringForgetPass = "Şifremi Unuttum ?";

TextStyle kStyleForgotPassword = GoogleFonts.inter(fontWeight: FontWeight.bold);

InputDecoration kdEmailField = InputDecoration(
    suffixIcon: const Icon(
      Icons.person,
      color: kthemeWhite,
      size: cIconSize,
    ),
    //contentPadding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
    hintText: kStringMailHint,
    hintStyle: kTextStyleLoginFields,
    fillColor: kthemeWhite,
    filled: true,
    border: OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)));

InputDecoration kdPasswordField = InputDecoration(
    suffixIcon: const Icon(
      Icons.visibility_off,
      color: kthemeWhite,
      size: 30,
    ),
    //contentPadding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
    hintText: kStringMailHint,
    hintStyle: kTextStyleLoginFields,
    fillColor: kthemeWhite,
    filled: true,
    border: OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)));
