import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

const String fontNameDefault = 'Montserrat';
const String fontNameMainScreenPlates = 'Montserrat';
const String appBarFontName = 'Amatic_SC';

const smallMediumTextSize = 16.0;

const Color textColorAppBar = Color.fromRGBO(51, 51, 51, 1.0);

const Color mainScreenPlatesShadowColor = Color.fromRGBO(64, 64, 64, 1.0);
const Color mainScreenBorderColor = Color.fromRGBO(110, 130, 140, 1.0);
const Color mainScreenBackgroundColor = Color.fromRGBO(240, 230, 210, 1.0);


final frontImageBoxDecoration = BoxDecoration(
    border: Border.all(width: 1, color: mainScreenBorderColor),
    color: mainScreenBackgroundColor,
    borderRadius: BorderRadius.circular(20.0),
    boxShadow: const [
      bigPlateIconBoxShadow
    ]
);

const bigPlateIconBoxShadow = BoxShadow(
    color: mainScreenPlatesShadowColor,
    offset: Offset(-2.0, 4.0),
    blurRadius: 5,
    spreadRadius: 3.0
);

final mainScreenPlatesBoxDecoration = BoxDecoration(
    border: Border.all(width: 1, color: mainScreenBorderColor),
    color: mainScreenBackgroundColor,
    borderRadius: BorderRadius.circular(20.0),
    boxShadow: const [
      mainScreenPlatesBoxShadow
    ]
);

const mainScreenPlatesTextStyleSmallMediumShadow = TextStyle(
    fontFamily: fontNameMainScreenPlates,
    fontWeight: FontWeight.w500,
    fontSize: smallMediumTextSize,
    color: textColorAppBar,
    shadows: [
      mainScreenPlatesTextShadow
    ]
);

const mainScreenPlatesTextShadow = BoxShadow(
    color: mainScreenPlatesShadowColor,
    offset: Offset(-0.5, 1.0),
    blurRadius: 2,
    spreadRadius: 1.0
);

const mainScreenPlatesBoxShadow = BoxShadow(
    color: mainScreenPlatesShadowColor,
    offset: Offset(-2.0, 4.0),
    blurRadius: 5,
    spreadRadius: 3.0
);
