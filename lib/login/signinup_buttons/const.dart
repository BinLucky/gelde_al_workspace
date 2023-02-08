import 'package:flutter/cupertino.dart';
import 'package:gelde_al_workspace/reponsive_ui.dart';
import '../../const/const.dart';

double ksButtonWidth = double.infinity; //deviceWidth * 0.86;
double ksButtonHeight = ResponsiveScaler.safeBlockVertical * 7.7;

String kStringSignUp = "KAYIT OL";
String kStringSignIn = "GİRİŞ";

TextStyle kStyleSignup = const TextStyle(
    color: kthemeYellow, fontWeight: FontWeight.bold, fontSize: 20);
TextStyle kStyleSignin = const TextStyle(
    color: kthemeBlack, fontWeight: FontWeight.bold, fontSize: 20);
