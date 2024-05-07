import 'package:flutter/material.dart';
import 'package:rockpaperscissor/Reusable_contents/responsive.dart';

Widget gameScreenContainer (
    double height,
    double width,
    String imagePath,
    BuildContext context,
    ) {
  return Container(
    height: screenLayout(height, context),
    width: screenLayout(width, context),
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(imagePath)),
      shape: BoxShape.circle,
      color: Colors.transparent,
    ),
  );
}
