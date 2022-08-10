import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color greenColor = Color(0xff125B50);
Color blueColor = Color(0xff143F6B);
Color blackColor = Color(0xff000000);
Color whiteColor = Color(0xffFFFFFF);
// Color whiteColor = Colors.white;
Color greyColor = Color(0xff82868E);

// for TextStyle, w500=tipe medium text, w300=light
TextStyle blackTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: blackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: whiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w300,
  color: greyColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: greenColor,
);