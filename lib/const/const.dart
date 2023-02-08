import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

import '../reponsive_ui.dart';

final String logoPath = "assets/logo.svg";

final Widget mainLogo = SvgPicture.asset(
  logoPath,
  height: 10,
);

//##### COLORS #####//
const Color kmainScaffoldColor = Color(0xFF2F2F2F);
const Color kthemeGrey = Color(0xFFE5E5E5);
const Color kthemeWhite = Color(0xFFFFFFFF);
const Color kthemeBlack = Color(0xFF2F2F2F);
const Color kthemeYellow = Color(0xFFEBFF00);
//####### DEVICE SCREEN SIZES #######//
double deviceHeight = getdeviceHeigt();
double deviceWidth = getdeviceWidth();
double barWidth = deviceWidth;
double yellowMarkerWidth = barWidth * 0.4;

double spaceSize = ResponsiveScaler.safeBlockVertical * 0.7;
//####### DEVICE SCREEN SIZES #######//

double logoHeight = 300;

/*class ContainerSize {
  ContainerSize(this._mediaQuery);
  final MediaQuery _mediaQuery;
  
}*/

const double cIconSize = 35;

double getdeviceWidth() {
  double devPixelRatio = window.devicePixelRatio;
  Size devLogicalScreenSize = window.physicalSize / devPixelRatio;
  debugPrint("Device Width = " + devLogicalScreenSize.width.toString());
  return devLogicalScreenSize.width;
}

double getdeviceHeigt() {
  double devPixelRatio = window.devicePixelRatio;
  Size devLogicalScreenSize = window.physicalSize / devPixelRatio;
  debugPrint("Device PhysicalSize = " + window.physicalSize.toString());
  debugPrint("Device Pixel Ratio = " + devPixelRatio.toString());
  debugPrint("Device Heigt = " + devLogicalScreenSize.height.toString());
  return devLogicalScreenSize.height;
}
