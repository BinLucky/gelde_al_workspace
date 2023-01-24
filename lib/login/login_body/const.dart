import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gelde_al_workspace/const/const.dart';

double klgphWidth = deviceWidth;
double klgphHeight = deviceHeight / 1.8;

double paddingTop = deviceHeight * 0.07;
double paddingBot = deviceHeight * 0.07;
double paddingLeft = deviceWidth * 0.09;
double paddingRight = deviceWidth * 0.09;
double klgphElementHeight = (klgphHeight - (paddingTop + paddingBot)) / 2.4;

EdgeInsets klgphPadding =
    EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBot);

BoxDecoration klgphDecoration = const BoxDecoration(
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50), topRight: Radius.circular(50)),
  color: kthemeGrey,
);

//ThemeData tmData = ThemeData(accentColor: Colors.blue);
