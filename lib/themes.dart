import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmdc1/constant.dart';
import 'package:sizer/sizer.dart';

class CustomTheme {
  var baseTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: kPrimaryColor,
    primaryColor: kPrimaryColor,

    appBarTheme: AppBarTheme(
      backgroundColor: kPrimaryColor,
      centerTitle: true,  // Centers title
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: kTextWhiteColor,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(

      labelStyle: TextStyle(
          fontSize: 14, color: kTextLightColor, fontWeight: FontWeight.w400
      ),

      hintStyle: TextStyle(fontSize: 16.0, color: kTextBlackColor, height: 0.5),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kTextBlackColor, width: 0.7),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: kTextBlackColor),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kTextBlackColor),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: kPrimaryColor,
        ),
      ),


      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kErrorBorderColor, width: 1.2),
      ),
      //same on focus error color
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: kErrorBorderColor,
          width: 1.2,
        ),
      ),

      errorStyle: TextStyle(
        fontSize: 12.0, // Chhoti font size set kar raha hoon
        color: kErrorBorderColor, // Aap is color ko customize kar sakte hain
      ),
    ),


    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineSmall: GoogleFonts.chewy(
        color: kTextWhiteColor,
        fontSize: 30.sp,
      ),
      bodyLarge: TextStyle(
        color: kTextWhiteColor,
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: kTextWhiteColor,
        fontSize: 28.0,
      ),
      titleMedium: TextStyle(
        color: kTextWhiteColor,
        fontSize: 17.sp,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: GoogleFonts.poppins(
        color: kTextWhiteColor,
        fontSize: 13.sp,
        fontWeight: FontWeight.w300,
      ),
      bodySmall: GoogleFonts.poppins(
        color: kTextWhiteColor,
        fontSize: 20.sp,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}