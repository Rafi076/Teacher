import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterFlowTheme {
  // Primary and secondary colors
  static const Color primaryColor = Color(0xFF246481);
  static const Color secondaryColor = Color(0xFFCCF3EE);
  static const Color tertiaryColor = Color(0xFFC3F8F8);

  // Background colors
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color errorColor = Color(0xFFFF5963);
  static const Color successColor = Color(0xFF28A745);
  static const Color infoColor = Color(0xFF17A2B8);

  // Text colors
  static const Color primaryText = Color(0xFF1A1A1A);
  static const Color secondaryText = Color(0xFF757575);
  static const Color white = Color(0xFFFFFFFF);

  // Text styles
  static TextStyle get headline1 => GoogleFonts.roboto(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle get headline2 => GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: primaryText,
      );

  static TextStyle get headline3 => GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: primaryText,
      );

  static TextStyle get bodyText1 => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: primaryText,
      );

  static TextStyle get bodyText2 => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: secondaryText,
      );

  static TextStyle get caption => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: secondaryText,
      );

  static TextStyle get button => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: white,
      );

  // Add titleSmall style
  static TextStyle get titleSmall => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: primaryText,
      );

  static ThemeData get themeData {
    return ThemeData(
      primaryColor: primaryColor,
      cardColor: errorColor,
      textTheme: TextTheme(
        displayLarge: headline1,
        displayMedium: headline2,
        displaySmall: headline3,
        bodyLarge: bodyText1,
        bodyMedium: bodyText2,
        bodySmall: caption,
        labelLarge: button,
        titleSmall: titleSmall, // Add titleSmall to the text theme
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: secondaryColor,
        primary: primaryColor,
        error: errorColor,
        background: backgroundColor,
      ),
    );
  }
}
