import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var lightModeTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.raleway().fontFamily,
  primarySwatch: Colors.amber,
  backgroundColor: Color(0xFFFFFFFF),
  shadowColor: Colors.black26,
  colorScheme: colorSchemeLight,
  textTheme: textThemeLight,
  appBarTheme: appBarThemeLight,
  dividerTheme: dividerThemeLight,
  inputDecorationTheme: inputDecorationThemeLight,
  checkboxTheme: checkBoxTheme,
);

var darkModeTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.raleway().fontFamily,
  primarySwatch: Colors.amber,
  backgroundColor: Color(0xFF404040),
  shadowColor: Colors.black26,
  colorScheme: colorSchemeDark,
  textTheme: textThemeDark,
  appBarTheme: appBarThemeDark,
  inputDecorationTheme: inputDecorationThemeDark,
  checkboxTheme: checkBoxTheme,
);

String currentLogo = 'assets/images/logoLightMode.png';
String lightModeLogo = 'assets/images/logoLightMode.png';
String darkModeLogo = 'assets/images/logoDarkMode.png';

///
///ColorSchemes
///
var colorSchemeLight = ColorScheme(
  primary: Color(0xFFFAB228),
  primaryContainer: Color(0xFFFAB228),
  secondary: Color(0xFF505050),
  secondaryContainer: Colors.black26,
  surface: Color(0xFFF8F8F8),
  background: Color(0xFFFFFFFF),
  error: Colors.red,
  onPrimary: Color(0xFFFAB228),
  onSecondary: Color(0xFF505050),
  onSurface: Color(0xFFA5C644),
  onBackground: Color(0xFFFFFFFF),
  onError: Color(0xFFFAB228),
  brightness: Brightness.light,
);

var colorSchemeDark = ColorScheme(
  primary: Color(0xFFFAB228),
  primaryContainer: Color(0xFFFAB228),
  secondary: Color(0xFFF8F8F8),
  secondaryContainer: Color(0x42000000),
  surface: Color(0xFF505050),
  background: Color(0xFF404040),
  error: Colors.red,
  onPrimary: Color(0xFFFAB228),
  onSecondary: Color(0xFF505050),
  onSurface: Color(0xFFA5C644),
  onBackground: Color(0xFFFFFFFF),
  onError: Color(0xFFFAB228),
  brightness: Brightness.dark,
);

///
///Text themes
///
double bodyTextSize = 14;
double header1Size = 36;
double header2Size = 20;
double header3Size = 17;

var textThemeLight = TextTheme(
  bodyText1: TextStyle(
    color: Color(0xFF505050),
    fontSize: bodyTextSize,
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  bodyText2: TextStyle(
    color: Color(0xFF505050),
    fontSize: bodyTextSize,
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline1: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header1Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline2: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header2Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline3: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header3Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline4: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header1Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline5: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header2Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline6: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header3Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
);

var textThemeDark = TextTheme(
  bodyText1: TextStyle(
    color: Color(0xFF505050),
    fontSize: bodyTextSize,
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  bodyText2: TextStyle(
    color: Color(0xFFF8F8F8),
    fontSize: bodyTextSize,
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline1: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header1Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline2: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header2Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline3: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header3Size,
    color: Color(0xFF505050),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline4: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header1Size,
    color: Color(0xFFF8F8F8),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline5: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header2Size,
    color: Color(0xFFF8F8F8),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
  headline6: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: header3Size,
    color: Color(0xFFF8F8F8),
    shadows: <Shadow>[
      Shadow(
        color: Colors.black26,
        blurRadius: 5,
      ),
    ],
  ),
);

///
///AppBar themes
///
var appBarThemeLight = AppBarTheme(
  backgroundColor: Color(0xFFFFFFFF),
  elevation: 0,
);

var appBarThemeDark = AppBarTheme(
  backgroundColor: Color(0xFF404040),
  elevation: 0,
);

///
///Divider themes
///
var dividerThemeLight = DividerThemeData(
  space: 25,
  thickness: 1,
  color: Colors.black26,
  indent: 5,
  endIndent: 5,
);

var dividerThemeDark = DividerThemeData(
  space: 25,
  thickness: 1,
  color: colorSchemeDark.secondary,
  indent: 5,
  endIndent: 5,
);

///
///Input decoration themes
///
var inputDecorationThemeLight = InputDecorationTheme(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF505050),
    ),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFFAB228),
    ),
  ),
);

var inputDecorationThemeDark = InputDecorationTheme(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFF8F8F8),
    ),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFFAB228),
    ),
  ),
);

var checkBoxTheme = CheckboxThemeData(
  fillColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.selected)) {
      return Color(0xFFFAB228);
    }
    return null;
  }),
);
