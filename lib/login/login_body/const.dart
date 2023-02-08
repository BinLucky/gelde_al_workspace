import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gelde_al_workspace/const/const.dart';
import 'package:gelde_al_workspace/reponsive_ui.dart';

double klgphWidth = ResponsiveScaler.safeBlockHorizontal * 100; //deviceWidth;
double klgphHeight =
    ResponsiveScaler.safeBlockVertical * 50; //deviceHeight / 1.8;

double paddingTop = ResponsiveScaler.safeBlockVertical * 3;
double paddingBot = ResponsiveScaler.safeBlockVertical * 3;
double paddingLeft = ResponsiveScaler.safeBlockHorizontal * 10;
double paddingRight = ResponsiveScaler.safeBlockHorizontal * 10;
double klgphElementHeight = ResponsiveScaler.safeBlockVertical * 20;
//45; //(klgphHeight - (paddingTop + paddingBot)) / 2.4;

EdgeInsets klgphPadding =
    EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBot);

BoxDecoration klgphDecoration = const BoxDecoration(
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50), topRight: Radius.circular(50)),
  color: kthemeGrey,
);
