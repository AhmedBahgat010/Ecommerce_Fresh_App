import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../My_colors/colors.dart';

double sizeFromHeight(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery
      .of(context)
      .size
      .height;
  fraction = (hasAppBar
      ? (screenHeight -
      AppBar().preferredSize.height -
      MediaQuery
          .of(context)
          .padding
          .top)
      : screenHeight) /
      fraction;
  return fraction;
}

double sizeFromWidth(BuildContext context,
    double fraction,) {
  return MediaQuery
      .of(context)
      .size
      .width / fraction;
}



TextStyle pinkbold = GoogleFonts.cairo(
  textStyle:  const TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, height: 1, color: pinkClear),
);

TextStyle graybold = GoogleFonts.cairo(
  textStyle: const TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, height: 1, color: gray),
);

TextStyle grayContainerFont = GoogleFonts.cairo(
  textStyle: const TextStyle(
      fontSize: 28, fontWeight: FontWeight.w600, color: gray),
);
TextStyle pinkContainerFont = GoogleFonts.cairo(
  textStyle: const TextStyle(
      fontSize: 28, fontWeight: FontWeight.w600, color: pink),
);
