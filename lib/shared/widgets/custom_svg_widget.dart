import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  final String icon;
  final double? height, width;
  final Color? color;
  final BoxFit fit;

  const CustomSvg({
    super.key,
    required this.icon,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: height,
      width: width,
      color: color,
      fit: fit,
    );
  }
}
