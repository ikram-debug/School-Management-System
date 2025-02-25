import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const Color kPrimaryColor = Color(0xFF345FB4);
const Color kSecondaryColor = Color(0xFF6789CA);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);


const kDefaultPadding = 20.0;


const sizedBox = SizedBox(height: kDefaultPadding);
const kWidthSizedBox = SizedBox(width: kDefaultPadding);
const kHalfSizedBox = SizedBox(height: kDefaultPadding / 2);
const kHalfWidthSizedBox = SizedBox(width: kDefaultPadding / 2);


final kTopBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(40),
  topRight: Radius.circular(40),
);

final kBottomBorderRadius = BorderRadius.only(
  bottomRight: Radius.circular(20),
  bottomLeft: Radius.circular(20),
);


final kInputTextStyle = GoogleFonts.poppins(
  color: kTextBlackColor,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

