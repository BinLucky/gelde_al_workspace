import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

final String logoPath = "assets/logo.svg";

final Widget mainLogo = SvgPicture.asset(
  logoPath,
  height: 10,
);

//##### COLORS #####//

const Color kmainScaffoldColor = Color(0xFF2F2F2F);
const Color kthemeWhite = Color(0xFFE5E5E5);
const Color kinputWhite = Color(0xFFE0E0E0);
const Color kthemeBlack = Color(0xFF2F2F2F);
const Color kthemeYellow = Color(0xFFEBFF00);

double logoHeight = 300;

/*class ContainerSize {
  ContainerSize(this._mediaQuery);
  final MediaQuery _mediaQuery;
  
}*/

const double cIconSize = 35;

double dependedSizeWidth(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return MediaQuery.of(context).size.width;
  } else
    return MediaQuery.of(context).size.height;
}

class DependedSizes {
  DependedSizes();

  double getdeviceWidth() {
    double devPixelRatio = window.devicePixelRatio;
    Size devLogicalScreenSize = window.physicalSize / devPixelRatio;
    return devLogicalScreenSize.width;
  }

  double getdeviceHeigt() {
    double devPixelRatio = window.devicePixelRatio;
    Size devLogicalScreenSize = window.physicalSize / devPixelRatio;
    return devLogicalScreenSize.height;
  }
}
