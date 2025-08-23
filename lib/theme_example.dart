import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeExample = ThemeData(
  brightness: Brightness.light,

  // Text, RichText, TextSpan
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.poppins(color: Color(0xFF000000)),
    bodyMedium: GoogleFonts.poppins(color: Color(0xFF000000)),
    bodySmall: GoogleFonts.poppins(color: Color(0xFF000000)),
    titleLarge: GoogleFonts.poppins(color: Color(0xFF000000)),
  ),

  // TextFormField, DropDownButton
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: GoogleFonts.poppins(color: Color(0xFF404040)),
    labelStyle: GoogleFonts.poppins(color: Color(0xFF000000)),
    helperStyle: GoogleFonts.poppins(color: Color(0xFF000000)),
    errorStyle: GoogleFonts.poppins(color: Color(0xFFFF0000)),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF808080)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF404040)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF000000)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFFF0000)),
    ),
  ),

  // Selection TextFormField
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color(0xFF000000),
    selectionColor: Color(0x40808080),
    selectionHandleColor: Color(0xFF000000),
  ),

  // CheckBox
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return Color(0xFF808080);
      if (states.contains(WidgetState.selected)) return Color(0xFF0080FF);
      return Color(0x00000000);
    }),
    checkColor: WidgetStateProperty.all(Color(0xFFFFFFFF)),
    overlayColor: WidgetStateProperty.all(Color(0xFF808080)),
    side: BorderSide(color: Color(0xFF000000)),
  ),

  // Radio
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return Color(0xFF808080);
      if (states.contains(WidgetState.selected)) return Color(0xFF0080FF);
      return Colors.red;
    }),
    overlayColor: WidgetStateProperty.all(Color(0xFF000000)),
  ),

  // Switch
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return Color(0xFF808080);
      if (states.contains(WidgetState.selected)) return Color(0xFF0080FF);
      return Color(0xFFFFFFFF);
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return Color(0xFF404040);
      if (states.contains(WidgetState.selected)) return Color(0xFF8080FF);
      return Color(0xFFBFBFBF);
    }),
    overlayColor: WidgetStateProperty.all(Color(0xFF000000)),
    thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
      Icon selectedIcon() {
        return const Icon(Icons.check, size: 12, color: Color(0xFFFFFFFF));
      }

      Icon unselectedIcon() {
        return const Icon(Icons.close, size: 12, color: Color(0xFF000000));
      }

      if (states.contains(WidgetState.selected)) return selectedIcon();
      return unselectedIcon();
    }),
  ),

  // DropDownMenu
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle: GoogleFonts.poppins(color: Color(0xFF000000)),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(Color(0xFFFFFFFF)),
      shadowColor: WidgetStatePropertyAll(Color(0x40000000)),
    ),
  ),

  // ElevatedButton
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return Color(0xFF808080);
        if (states.contains(WidgetState.pressed)) return Color(0xFF0080FF);
        return Color(0xFF00BFFF);
      }),
      overlayColor: WidgetStateProperty.all(Color(0xFF00BFFF)),
      shadowColor: const WidgetStatePropertyAll(Color(0x40000000)),
    ),
  ),

  // Bottom Sheet
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Color(0xFFFFFFFF),
  ),

  // Dialog
  dialogTheme: const DialogThemeData(backgroundColor: Color(0xFFFFFFFF)),

  // Snack Bar
  snackBarTheme: const SnackBarThemeData(backgroundColor: Color(0xFFFFFFFF)),

  // App Bar
  appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0080FF)),

  // Floating Action Button
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF0080FF),
    splashColor: Color(0xFF00BFFF),
  ),

  // Bottom Navigation Bar
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF0080FF),
    selectedItemColor: Color(0xFFFFFFFF),
    unselectedItemColor: Color(0xFFBFBFBF),
    selectedIconTheme: IconThemeData(size: 20, color: Color(0xFFFFFFFF)),
    unselectedIconTheme: IconThemeData(size: 16, color: Color(0xFFBFBFBF)),
    selectedLabelStyle: GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
    unselectedLabelStyle: GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: 10,
    ),
  ),
);

/*
| Opacity |   Hex  |
| ------: | :----: |
|    100% | **FF** |
|     95% | **F2** |
|     90% | **E6** |
|     85% | **D9** |
|     80% | **CC** |
|     75% | **BF** |
|     70% | **B3** |
|     65% | **A6** |
|     60% | **99** |
|     55% | **8C** |
|     50% | **80** |
|     45% | **73** |
|     40% | **66** |
|     35% | **59** |
|     30% | **4D** |
|     25% | **40** |
|     20% | **33** |
|     15% | **26** |
|     10% | **1A** |
|      5% | **0D** |
|      0% | **00** |

*/
