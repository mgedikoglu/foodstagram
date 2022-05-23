import 'package:flutter/material.dart';
import 'package:foodstagram/util/colors.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle? kHeadingTextStyle = GoogleFonts.pacifico(
  color: Color.fromARGB(255, 0, 0, 0),
  fontWeight: FontWeight.w500,
  fontSize: 40.0,
  letterSpacing: -0.7,
);

final appBarLogoStyle = GoogleFonts.pacifico(
  color: Color.fromARGB(255, 0, 0, 0),
  fontWeight: FontWeight.w500,
  fontSize: 25.0,
  letterSpacing: -0.7,
);

final kHeadingSecondTextStyle = GoogleFonts.signikaNegative(
  fontSize: 15.0,
  fontWeight: FontWeight.w700,
  color: Color.fromARGB(255, 0, 0, 0),
);

final kButtonLightTextStyle = GoogleFonts.montserrat(
  color: AppColors.textColor,
  fontSize: 20.0,
  letterSpacing: -0.7,
);

final kButtonDarkTextStyle = GoogleFonts.montserrat(
  color: AppColors.darkButtonTextColor,
  fontSize: 20.0,
  letterSpacing: -0.7,
);

final kAppBarTitleTextStyle = GoogleFonts.montserrat(
  color: AppColors.appBarTitleTextColor,
  fontSize: 24.0,
  fontWeight: FontWeight.w600,
  letterSpacing: -0.7,
);

final kBoldLabelStyle = GoogleFonts.montserrat(
  fontSize: 17.0,
  color: AppColors.textColor,
  fontWeight: FontWeight.w600,
);

final kLabelStyle = GoogleFonts.montserrat(
  fontSize: 14.0,
  color: AppColors.textColor,
);

final kDefaultTextStyle = GoogleFonts.lato(
  fontSize: 16.7823,
  color: Color.fromARGB(255, 0, 0, 0),
  fontWeight: FontWeight.w500,
);

final kDefaultBoldTextStyle = GoogleFonts.lato(
  fontSize: 16.7823,
  color: Color.fromARGB(255, 0, 0, 0),
  fontWeight: FontWeight.w800,
);

final kPostTextStyleBold = GoogleFonts.lato(
  color: AppColors.darkButtonTextColor,
  fontSize: 23.0,
  letterSpacing: 1,
  fontWeight: FontWeight.w700,
);

final kPostTextStyleDefault = GoogleFonts.lato(
  color: AppColors.darkButtonTextColor,
  fontSize: 17.0,
  letterSpacing: 1,
);

final kPostTextStyleGrey = GoogleFonts.lato(
  color: Color.fromARGB(255, 172, 172, 172),
  fontSize: 18.0,
  letterSpacing: 1,
);
