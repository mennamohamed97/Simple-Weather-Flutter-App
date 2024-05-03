
import 'package:flutter/material.dart';

class Constants {
  final Color lightColor = const Color(0xff90B2F9);
  final Color primaryColor = const Color(0xff125181);
  final Color secondaryColor = const Color(0xff718fd3);
  final tertiaryColor = const Color(0xff205cf1);
  final darkColor = const Color(0xff000c26);
  final greyColor = const Color(0xffd9dadb);
  LinearGradient customGradient() {
    List<Color> colors = [
      const Color(0xff000c26),
      const Color(0xff124b75),
      const Color(0xff001436),
      const Color(0xff000c26),
    ];
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: colors,
    );
  }
  final linearGradientBlue = const LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [Color(0xff124b75), Color(0xff001436)],
      stops: [0.0, 1.0]);
  final linearGradientPurple = const LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [Color(0xff51087E), Color(0xff6C0BA9)],
      stops: [0.0, 1.0]);
  final Shader shader = const LinearGradient(
    colors: <Color>[Color(0xffABCFF2), Color(0xff9AC6F3)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}