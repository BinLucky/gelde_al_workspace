import 'package:flutter/material.dart';

import '../../const/const.dart';
import 'const.dart';

class YellowButtonMarker extends StatelessWidget {
  const YellowButtonMarker({
    Key? key,
    required this.barWidth,
    required this.yellowMarkerWidth,
  }) : super(key: key);

  final double barWidth;
  final double yellowMarkerWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: barWidth * 0.003),
      child: Container(
        width: yellowMarkerWidth,
        height: ksButtonHeight,
        decoration: BoxDecoration(
            color: kthemeYellow, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
