import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String logoPath = "assets/logo.svg";

final Widget mainLogo = SvgPicture.asset(
  logoPath,
  height: 10,
);

double logoHeight = 300;

/*class ContainerSize {
  ContainerSize(this._mediaQuery);
  final MediaQuery _mediaQuery;
  
}*/

const double cIconSize = 35;
