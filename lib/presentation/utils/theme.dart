import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPaddingApp = EdgeInsets.all(12.0);
const kPaddingAppSmall = EdgeInsets.all(8.0);
const kPaddingAppMedium = EdgeInsets.all(16.0);
const kPaddingAppLarge = EdgeInsets.all(24.0);
const kPaddingAppHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
const kPaddingAppHorizontalSmall = EdgeInsets.symmetric(horizontal: 16.0);
const kRadiusCornerOutside = 100.0;
const kRadiusCornerInside = 12.0;

const inputDataTableDecoration = InputDecoration(
  contentPadding: EdgeInsets.zero,
  fillColor: Colors.transparent,
  border: InputBorder.none,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  focusColor: Colors.transparent,
  hoverColor: Colors.transparent,
);

const dropdownAsFilterDecoration = InputDecoration(
  border: OutlineInputBorder(borderSide: BorderSide.none),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
  errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
  focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide.none),
  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
  disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
  fillColor: Colors.transparent,
  contentPadding: EdgeInsets.zero,
);

final ColorScheme colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color(0xFF000000),
  primary: const Color(0xFF000000),
  primaryContainer: const Color(0xffffffff),
  onPrimary: const Color(0xFFFFFFFF),
  onPrimaryContainer: const Color(0xff000000),
  secondary: const Color(0xffFFFFFF),
  secondaryContainer: const Color(0xff000000),
  onSecondary: const Color(0xff000000),
  onSecondaryContainer: const Color(0xffFFFFFF),
  tertiary: const Color(0xff4E4E4E),
  tertiaryContainer: const Color(0xffFFFFFF),
  onTertiary: const Color(0xffFFFFFF),
  onTertiaryContainer: const Color(0xff000000),
  inversePrimary: const Color(0xFF0D0D0D),
  inverseSurface: const Color(0xFF1C1C1C),
  outline: const Color(0xFF4E4E4E),
  outlineVariant: const Color(0xFFFFFFFF),
  error: const Color(0xFFFF2500),
  errorContainer: const Color(0xFFFFD8E4),
  onError: const Color(0xFFFFFFFF),
  surface: const Color(0xFF000000),
  onSurface: const Color(0xFFFFFFFF),
  shadow: const Color(0xFF000000),
);

extension ColorSchemeExtension on ColorScheme {
  Color get success => const Color(0xFF8EF38D);
  Color get warning => const Color(0xFFF3E98D);
  Color get red => const Color(0xFFFF2500);
  Color get orange => const Color(0xFFFF9301);
  Color get yellow => const Color(0xFFFFFB00);
  Color get green => const Color(0xFF02F900);
  Color get cyan => const Color(0xFF03FDFF);
  Color get blue => const Color(0xFF0533FF);
  Color get purple => const Color(0xFF942092);
  Color get magenta => const Color(0xFFFF40FF);
  Color get tahiti => const Color(0xFFB32525);
  Color get baru => const Color(0xFF136AC6);
  Color get fez => const Color(0xFFB680B9);
  Color get ubud => const Color(0xFF88AB4D);
  Color get bali => const Color(0xFFC3552A);
  Color get punta => const Color(0xFF1C5D9B);
  Color get costa => const Color(0xFF76C2F6);
  Color get dubai => const Color(0xFF4E7A75);
  Color get cairo => const Color(0xFFA58058);
  Color get napoli => const Color(0xFF1B4BD4);
  Color get paris => const Color(0xFF5B2FC4);
  Color get niza => const Color(0xFF447383);
  Color get amalfi => const Color(0xFF2E7FC1);
  Color get phiphi => const Color(0xFFF1A54A);
  Color get goya => const Color(0xFF885864);
  Color get aesthetic => const Color(0xFF806E59);
  Color get fashion => const Color(0xFFB780B9);
  Color get urban => const Color(0xFF6A7B89);
  Color get beach => const Color(0xFFEF865B);
  Color get food => const Color(0xFFE673C1);
  Color get nostalgia => const Color(0xFF286017);
  Color get tropical => const Color(0xFF87AC4C);
  Color get desert => const Color(0xFFCB944F);
  Color get snow => const Color(0xFF34679D);
  Color get extreme => const Color(0xFFA43333);
  Color get bw => const Color(0x001C1C1C);
  Color get base => const Color(0xFF1C1C1C);

  Gradient get gradientPrimary => LinearGradient(
        colors: [secondary, primary],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
  Gradient get horizontalPrimaryGradient => LinearGradient(
        colors: [secondary, primary],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );
}

final ThemeData theme = ThemeData(
  fontFamily: 'SFProText',
  useMaterial3: true,
  colorScheme: colorScheme,
  scaffoldBackgroundColor: colorScheme.surface,
  appBarTheme: AppBarTheme(backgroundColor: colorScheme.primary, elevation: 0, surfaceTintColor: colorScheme.primary),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 34),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    labelSmall: TextStyle(fontSize: 11),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: colorScheme.secondary,
    inactiveTrackColor: colorScheme.secondary,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
    trackHeight: 0.5,
  ),
  searchBarTheme: SearchBarThemeData(
    padding: WidgetStateProperty.all(
      kPaddingAppSmall.copyWith(top: 0, bottom: 0),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        side: BorderSide(color: colorScheme.primaryContainer, width: 1),
        borderRadius: BorderRadius.circular(kRadiusCornerInside),
      ),
    ),
    backgroundColor: WidgetStateProperty.all(colorScheme.surface),
    surfaceTintColor: WidgetStateProperty.all(colorScheme.surfaceTint),
    overlayColor: WidgetStateProperty.all(Colors.transparent),
    shadowColor: WidgetStateProperty.all(colorScheme.shadow),
    hintStyle: WidgetStateProperty.all(
      TextStyle(
        color: colorScheme.inversePrimary.withOpacity(0.4),
      ),
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    elevation: 4,
  ),
  cardTheme: const CardTheme(
    color: Colors.white,
    surfaceTintColor: Colors.transparent,
    elevation: 4,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.white, width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(kRadiusCornerOutside),
      ),
    ),
  ),
  dividerTheme: DividerThemeData(
    space: 0,
    thickness: 2,
    color: colorScheme.outline,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(colorScheme.tertiary.withOpacity(0.3)),
      foregroundColor: WidgetStateProperty.all(colorScheme.onPrimary),
      maximumSize: WidgetStateProperty.all(const Size(100, 32)),
      minimumSize: WidgetStateProperty.all(const Size(20, 32)),
      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 12)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerOutside),
        ),
      ),
      fixedSize: WidgetStateProperty.all(const Size.fromHeight(32)),
      iconSize: WidgetStateProperty.all(14.0),
      textStyle: WidgetStateProperty.all(
        const TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
      ),
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      foregroundColor: WidgetStateProperty.all(colorScheme.primary),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
        ),
      ),
      iconSize: WidgetStateProperty.all(14.0),
    ),
  ),
  iconTheme: IconThemeData(
    color: colorScheme.primary,
    size: 24,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(colorScheme.inversePrimary),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
        ),
      ),
      textStyle: WidgetStateProperty.all(
        const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    iconColor: colorScheme.secondary,
    fillColor: colorScheme.surface,
    activeIndicatorBorder: BorderSide(color: colorScheme.primary),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerInside)),
      borderSide: BorderSide(color: colorScheme.primaryContainer),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerInside)),
      borderSide: BorderSide(color: colorScheme.primary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerInside)),
      borderSide: BorderSide(color: colorScheme.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerInside)),
      borderSide: BorderSide(color: colorScheme.error),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerInside)),
      borderSide: BorderSide(color: colorScheme.outline),
    ),
    filled: true,
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerInside)),
      borderSide: BorderSide(color: colorScheme.primaryContainer),
    ),
    contentPadding: kPaddingAppSmall,
    hintStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: colorScheme.inversePrimary.withOpacity(0.4),
    ),
    labelStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: colorScheme.inversePrimary.withOpacity(0.4),
    ),
    helperStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: colorScheme.inversePrimary.withOpacity(0.4),
    ),
  ),
  timePickerTheme: TimePickerThemeData(
    backgroundColor: colorScheme.primaryContainer,
    dialBackgroundColor: colorScheme.primaryContainer,
  ),
  disabledColor: colorScheme.outline,
  cupertinoOverrideTheme: CupertinoThemeData(
    barBackgroundColor: colorScheme.secondaryContainer,
    primaryColor: colorScheme.primaryContainer,
    scaffoldBackgroundColor: colorScheme.primaryContainer,
    primaryContrastingColor: colorScheme.primaryContainer,
    applyThemeToAll: true,
    brightness: Brightness.light,
    textTheme: CupertinoTextThemeData(
      primaryColor: colorScheme.primary,
      dateTimePickerTextStyle: TextStyle(color: colorScheme.onError),
    ),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.transparent, elevation: 0),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    elevation: 0,
    selectedItemColor: colorScheme.primary,
    unselectedItemColor: colorScheme.secondary,
  ),
  dialogTheme: DialogTheme(
    backgroundColor: colorScheme.tertiary,
    surfaceTintColor: colorScheme.tertiary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kRadiusCornerInside),
    ),
    actionsPadding: const EdgeInsets.all(12),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle: TextStyle(
      color: colorScheme.inversePrimary,
      fontSize: 16,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: colorScheme.primaryContainer,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kRadiusCornerInside),
        borderSide: BorderSide(color: colorScheme.primaryContainer),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kRadiusCornerInside),
        borderSide: BorderSide(color: colorScheme.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kRadiusCornerInside),
        borderSide: BorderSide(color: colorScheme.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kRadiusCornerInside),
        borderSide: BorderSide(color: colorScheme.error),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kRadiusCornerInside),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      contentPadding: kPaddingAppSmall,
      hintStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: colorScheme.inversePrimary.withOpacity(0.4),
      ),
      labelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: colorScheme.inversePrimary.withOpacity(0.4),
      ),
      helperStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: colorScheme.inversePrimary.withOpacity(0.4),
      ),
    ),
  ),
  cardColor: colorScheme.surface,
);
