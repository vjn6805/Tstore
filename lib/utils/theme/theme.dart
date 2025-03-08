import 'package:catlog/utils/theme/custon_theme/appbar_theme.dart';
import 'package:catlog/utils/theme/custon_theme/bottom_sheet_theme.dart';
import 'package:catlog/utils/theme/custon_theme/checkbox_theme.dart';
import 'package:catlog/utils/theme/custon_theme/chip_theme.dart';
import 'package:catlog/utils/theme/custon_theme/elevated_button_theme.dart';
import 'package:catlog/utils/theme/custon_theme/outlined_button_theme.dart';
import 'package:catlog/utils/theme/custon_theme/text_field_theme.dart';
import 'package:catlog/utils/theme/custon_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();   //make constructor private

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.LightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,

  );
}