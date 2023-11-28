import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class BaseColors {
  Color get white => Colors.white;

  Color get black => const Color.fromARGB(255, 33, 35, 34);

  Color get softGreen => const Color(0xFF01BA6C);

  Color get onSoftGreen => black;

  Color get silver => const Color.fromARGB(255, 113, 144, 157);

  Color get onSilver => black;

  Color get darkSilver => const Color(0xff4c5050);

  Color get grey => const Color(0xffc0c0c0);

  Color get darkGrey => const Color(0xff7a7a7a);

  Color get beige => const Color(0xFFe8d6a0);

  Color get onBeige => const Color.fromARGB(255, 33, 35, 34);

  Color get darkBeige => const Color(0xff91693e);

  Color get purple => Colors.deepPurple.shade300;

  Color get onPurple => Colors.white;

  Color get darkPurple => Colors.deepPurple.shade600;

  Color get red => const Color.fromARGB(255, 239, 62, 54);

  Color get onRed => Colors.white;

  Color get darkRed => Colors.red.shade900;

  Color get blue => const Color.fromARGB(255, 1, 116, 252);

  Color get onBlue => white;

  Color get darkBlue => Colors.blue.shade900;

  Color get orange => const Color(0xffE4811E);

  Color get onOrange => black;

  Color get darkOrange => const Color.fromARGB(255, 216, 67, 21);

  Color get green => const Color(0xff47bf29);

  Color get onGreen => Colors.white;

  Color get darkGreen => Colors.green.shade900;

  Color get yellow => const Color(0xffFFB800);

  Color get onYellow => const Color.fromARGB(255, 33, 35, 34);

  Color get darkYellow => Colors.amber.shade900;

  Color get cyan => const Color(0xff009ea4);

  Color get onCyan => Colors.white;

  Color get darkCyan => Colors.cyan.shade900;
}

class ThemeColors {
  BaseColors baseColors = BaseColors();

  /// Акценты
  /// основной цвет бренда
  Color get brand => const Color(0xff1E6FFE);

  Color get onBrandText => baseColors.white;

  /// затемнённый цвет бренда, для градиентов
  Color get brandDarker => brand;

  Color get onDarkBrand => baseColors.white;

  /// Акцент, сообщающий о чём-то хорошем, а также символ активности
  Color get accent => brand;

  Color get onAccentText => baseColors.white;

  /// Акцент, сообщающий о проблемах
  Color get danger => const Color.fromARGB(255, 239, 62, 54);

  Color get onDangerText => baseColors.white;

  /// Акцент, сообщающий об успехе
  Color get success => const Color(0xFF01BA6C);

  Color get onSuccessText => baseColors.black;

  /// Акцент, сообщающий предупреждении
  Color get warn => const Color(0xFFFFBB33);

  Color get warnDark => const Color(0xFFFF8800);

  /// Акцент, сообщающий об ожидании
  Color get waiting => const Color.fromARGB(255, 252, 212, 0);

  Color get onWaitingText => baseColors.black;

  /// Цвет важных кнопок
  Color get fabBackground => brand;

  Color get onFabBackground => onBrandText;

  /// Фоны
  /// Основной фон
  Color get background => const Color(0xFFECECEC);

  Color get lightBackground => const Color(0xFFFAFAFA);

  /// Фон для всплывающих меню и т.п.
  Color get translucent => const Color(0x99ECECEC);

  Color get translucentLight => caption.withOpacity(0.1);

  /// Фон для карточек
  Color get cardColor => const Color(0xFFFFFFFF);

  /// Фон для карточек на карточках
  Color get cardSecondaryColor => const Color(0xffE9E9E9);

  /// Тексты
  /// Основной цвет текста
  Color get text => baseColors.black;

  /// Цвет текста в стиле брендинга (для ссылок, некоторых заголовков и акцентных подписей)
  Color get brandedText => brand;

  /// Инвертированный цвет текста (для текста на цвете текста)
  Color get invertedText => baseColors.white;

  /// Менее важный цвет текста
  Color get textSecondary => const Color(0xFF232323);

  /// Цвет подписей
  Color get caption => const Color(0xff797979);

  Color get chartAxisColor => caption.withOpacity(0.5);

  /// Цвет выделения в навигации
  Color get onNavColor => onBrandText;

  Color get onNavReverseColor => brandedText;

  /// Цвета нормы
  Color get scoreBarColor => brand;

  Color get daysBarColor => brand;

  Color get onDaysBarColor => brand;
}

const styles = BaseStyle();

class BaseStyle {
  const BaseStyle();

  EdgeInsets get mainMargin => const EdgeInsets.all(20);

  EdgeInsets get mainPadding =>
      const EdgeInsets.symmetric(horizontal: 12, vertical: 12);

  double get mainRadius => 21;

  double get minRadius => 10;

  double get mediumRadius => 15;

  double get maxRadius => 25;

  BaseColors get baseColors => BaseColors();

  ThemeColors get themeColors => ThemeColors();

  InputDecoration get dropDownListDecoration => InputDecoration(
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
    filled: true,
    fillColor: themeColors.cardSecondaryColor,
  );

  Decoration get backgroundDecoration => BoxDecoration(
      gradient: LinearGradient(
          colors: [themeColors.background, themeColors.lightBackground],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp));

  LinearGradient get transparencyGradient => LinearGradient(
      colors: [
        themeColors.cardColor.withOpacity(0),
        themeColors.cardColor.withOpacity(1)
      ],
      stops: [
        Curves.easeIn.transform(0.1),
        Curves.easeIn.transform(0.95)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      tileMode: TileMode.clamp);

  BoxDecoration get plateDecoration => BoxDecoration(
      color: themeColors.brandDarker, borderRadius: BorderRadius.circular(50));

  TextStyle get linkStyle =>
      TextStyle(color: themeColors.brandedText, fontWeight: FontWeight.w600);

  /// Брендовые кнопки
  ButtonStyle get elevatedButtonStyle => ElevatedButton.styleFrom(
      foregroundColor: themeColors.onDarkBrand,
      backgroundColor: themeColors.brandDarker,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      alignment: Alignment.center,
      minimumSize: const Size(150, 40));

  ButtonStyle get dangerElevatedButtonStyle => OutlinedButton.styleFrom(
      backgroundColor: themeColors.danger,
      minimumSize: const Size(150, 40),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      alignment: Alignment.center);

  ButtonStyle get minElevatedButtonStyle => ElevatedButton.styleFrom(
      foregroundColor: themeColors.onDarkBrand,
      backgroundColor: themeColors.brandDarker,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      alignment: Alignment.center,
      minimumSize: const Size(0, 30));

  ButtonStyle get maxElevatedButtonStyle => ElevatedButton.styleFrom(
      foregroundColor: themeColors.onDarkBrand,
      backgroundColor: themeColors.brandDarker,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(mediumRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      alignment: Alignment.center,
      minimumSize: const Size(double.infinity, 40));

  ButtonStyle get filledButtonStyle => FilledButton.styleFrom(
      foregroundColor: themeColors.onDarkBrand,
      backgroundColor: themeColors.brandDarker,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      alignment: Alignment.center,
      minimumSize: const Size(150, 40));

  ButtonStyle get minFilledButtonStyle => FilledButton.styleFrom(
      foregroundColor: themeColors.onDarkBrand,
      backgroundColor: themeColors.brandDarker,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      alignment: Alignment.center,
      minimumSize: const Size(0, 30));

  ButtonStyle get maxFilledButtonStyle => FilledButton.styleFrom(
      foregroundColor: themeColors.onDarkBrand,
      backgroundColor: themeColors.brandDarker,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(mediumRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      alignment: Alignment.center,
      minimumSize: const Size(double.infinity, 40));

  /// Обведенные кнопки
  ButtonStyle get outlinedButtonStyle => OutlinedButton.styleFrom(
      foregroundColor: themeColors.brandedText,
      minimumSize: const Size(150, 40),
      side: BorderSide(width: 1, color: themeColors.brand),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      alignment: Alignment.center);

  ButtonStyle get dangerOutlinedButtonStyle => OutlinedButton.styleFrom(
      foregroundColor: themeColors.danger,
      minimumSize: const Size(150, 40),
      side: BorderSide(width: 1, color: themeColors.danger),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      alignment: Alignment.center);

  ButtonStyle get minOutlinedButtonStyle => OutlinedButton.styleFrom(
      foregroundColor: themeColors.brandedText,
      minimumSize: const Size(0, 30),
      side: BorderSide(width: 1, color: themeColors.brand),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      alignment: Alignment.center);

  ButtonStyle get maxOutlinedButtonStyle => OutlinedButton.styleFrom(
      foregroundColor: themeColors.brandedText,
      minimumSize: const Size(double.infinity, 40),
      side: BorderSide(width: 1, color: themeColors.brand),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(mediumRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      alignment: Alignment.center);

  /// Текстовые кнопки
  ButtonStyle get textButtonStyle => TextButton.styleFrom(
      foregroundColor: themeColors.text,
      minimumSize: const Size(150, 40),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      alignment: Alignment.center);

  ButtonStyle get minTextButtonStyle => TextButton.styleFrom(
      foregroundColor: themeColors.brandedText,
      minimumSize: const Size(0, 30),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(maxRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      alignment: Alignment.center);

  ButtonStyle get maxTextButtonStyle => TextButton.styleFrom(
      foregroundColor: themeColors.text,
      minimumSize: const Size(double.infinity, 40),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(mediumRadius))),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      alignment: Alignment.center);

  /// Кнопки с иконками
  ButtonStyle get elevatedIconButtonStyle => IconButton.styleFrom(
      foregroundColor: themeColors.onDarkBrand,
      backgroundColor: themeColors.brandDarker,
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(8),
      // minimumSize: const Size(40, 40),
      alignment: Alignment.center);

  ButtonStyle get outlinedIconButtonStyle => IconButton.styleFrom(
      foregroundColor: themeColors.brand,
      shape: const CircleBorder(),
      side: BorderSide(width: 1, color: themeColors.brand),
      padding: const EdgeInsets.all(8),
      // minimumSize: const Size(40, 40),
      alignment: Alignment.center);

  ButtonStyle get iconButtonStyle => IconButton.styleFrom(
      foregroundColor: themeColors.text,
      minimumSize: const Size(40, 40),
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(18),
      alignment: Alignment.center);

  ButtonStyle get dangerIconButtonStyle => IconButton.styleFrom(
      foregroundColor: themeColors.danger,
      // minimumSize: const Size(40, 40),
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center);

  ButtonStyle get dayOutlinedButtonStyle => OutlinedButton.styleFrom(
    foregroundColor: Colors.white.withOpacity(0.1),
    minimumSize: const Size(30, 30),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    visualDensity: VisualDensity.compact,
    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  /// Карточки
  BoxDecoration get cardDecorationRounded => BoxDecoration(
      color: themeColors.cardColor,
      borderRadius: BorderRadius.circular(mainRadius));

  BoxDecoration get cardDecorationOutlined => BoxDecoration(
      border: Border.all(color: themeColors.brand, width: 1),
      borderRadius: BorderRadius.circular(mainRadius));

  BoxDecoration get cardDecorationHard =>
      BoxDecoration(color: themeColors.cardColor);

  MarkdownStyleSheet get markdownStyleSheet => MarkdownStyleSheet(
    h1: mainTextTheme.headlineMedium,
    h2: mainTextTheme.headlineSmall,
    h3: mainTextTheme.titleLarge,
    h4: mainTextTheme.titleMedium,
    h5: mainTextTheme.titleSmall,
    h6: mainTextTheme.bodyMedium,
    strong: mainTextTheme.titleMedium,
    a: linkStyle,
    p: mainTextTheme.bodyLarge
        ?.copyWith(color: themeColors.textSecondary, height: 1.2) ??
        const TextStyle(),
  );

  /// Стиль нормы
  BoxDecoration get scoreBarDecoration => BoxDecoration(
      color: themeColors.scoreBarColor,
      borderRadius: BorderRadius.circular(10));

  BoxDecoration get disabledScoreBarDecoration => BoxDecoration(
      color: themeColors.cardSecondaryColor,
      borderRadius: BorderRadius.circular(10));

  BoxDecoration get daysBarDecoration => BoxDecoration(
      color: themeColors.daysBarColor, borderRadius: BorderRadius.circular(10));

  BoxDecoration get disabledDaysBarDecoration => BoxDecoration(
      color: themeColors.cardSecondaryColor,
      borderRadius: BorderRadius.circular(10));

  ThemeData get datePickerThemeData => mainTheme.copyWith(
      textTheme: mainTheme.textTheme.merge(const TextTheme(
        labelSmall: TextStyle(
          height: 1,
          fontFamily: "Steppe",
          fontSize: 11,
          letterSpacing: 0.8,
        ),
      )),
      textButtonTheme: TextButtonThemeData(
          style: minTextButtonStyle.copyWith(
              foregroundColor: MaterialStatePropertyAll(themeColors.text))));

  MaterialColor get swatch => Colors.blue;

  TextTheme get mainTextTheme => TextTheme(
    displayLarge: const TextStyle(
      fontFamily: "Steppe",
      height: 1.5,
      fontSize: 70,
      letterSpacing: 3,
    ),
    displayMedium: const TextStyle(
      fontFamily: "Steppe",
      height: 1.5,
      fontSize: 63,
      letterSpacing: -0.5,
    ),
    displaySmall:
    const TextStyle(fontFamily: "Steppe", height: 1.5, fontSize: 36),
    headlineMedium: const TextStyle(
      fontFamily: "Steppe",
      height: 1.5,
      fontSize: 28,
      letterSpacing: 1,
    ),
    headlineSmall: const TextStyle(
        fontFamily: "Steppe", height: 1.5, fontSize: 20, letterSpacing: 1),
    titleLarge: const TextStyle(
      fontFamily: "Steppe",
      height: 1.5,
      fontSize: 18,
      letterSpacing: 1,
    ),
    titleMedium: const TextStyle(
        height: 1.2, fontFamily: "Steppe", fontSize: 18, letterSpacing: 0),
    titleSmall: const TextStyle(
        height: 1.2, fontFamily: "Steppe", fontSize: 17, letterSpacing: 0),
    bodyLarge: const TextStyle(
        height: 1.2, fontFamily: "Steppe", fontSize: 15, letterSpacing: 0),
    bodyMedium: const TextStyle(
        height: 1.2,
        fontFamily: "Steppe",
        fontSize: 15,
        letterSpacing: 0.3),
    labelLarge: const TextStyle(
        fontFamily: "Steppe", height: 1.5, fontSize: 14, letterSpacing: 1),
    bodySmall: TextStyle(
        height: 1.2,
        fontFamily: "Steppe",
        fontSize: 13,
        letterSpacing: 0.5,
        color: themeColors.caption),
    labelSmall: const TextStyle(
        height: 1.2, fontFamily: "Steppe", fontSize: 13, letterSpacing: 1),
  );

  ThemeData get mainTheme => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: themeColors.brand,
    primaryColorDark: themeColors.brandDarker,
    canvasColor: themeColors.translucent,
/*      textSelectionTheme: TextSelectionThemeData(
        cursorColor: themeColors.brand,
        selectionColor: Colors.white24,
        selectionHandleColor: Colors.amber.shade800,
      ),*/
    dialogBackgroundColor: themeColors.lightBackground,
    cardColor: themeColors.cardColor,
    toggleButtonsTheme: ToggleButtonsThemeData(
      borderWidth: 1,
      borderRadius: BorderRadius.circular(5),
      selectedBorderColor: themeColors.brandedText,
      selectedColor: themeColors.brand,
      borderColor: themeColors.textSecondary,
    ),
    iconTheme: IconThemeData(
      color: themeColors.text,
    ),
    textTheme: mainTextTheme,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(mainRadius),
      ),
      backgroundColor: themeColors.lightBackground,
      surfaceTintColor: Colors.transparent,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(mainRadius),
      ),
      surfaceTintColor: Colors.transparent,
    ),

    ///Разделитель
    dividerTheme: DividerThemeData(
        color: themeColors.caption.withOpacity(0.3),
        thickness: 0.25,
        indent: 0,
        endIndent: 0),

    /// SnackBar
    snackBarTheme: SnackBarThemeData(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: themeColors.textSecondary,
      contentTextStyle: mainTextTheme.bodyMedium,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(mainRadius)),
    ),

    chipTheme: ChipThemeData(
      selectedColor: themeColors.brand,
      labelStyle:
      mainTextTheme.labelLarge?.copyWith(color: themeColors.text),
      secondaryLabelStyle: mainTextTheme.labelLarge
          ?.copyWith(color: themeColors.onBrandText),
    ),
    timePickerTheme: TimePickerThemeData(
      hourMinuteTextStyle: styles.mainTextTheme.displayMedium,
    ),

    /// Поля ввода
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding:
      const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
      filled: true,
      fillColor: themeColors.cardSecondaryColor,
      hintStyle:
      mainTextTheme.titleSmall?.copyWith(color: themeColors.caption),
      labelStyle:
      mainTextTheme.bodyLarge?.copyWith(color: themeColors.caption),
      suffixStyle: mainTextTheme.titleSmall,
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(mediumRadius),
          borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(mediumRadius),
          borderSide: BorderSide(color: themeColors.brand, width: 1.0)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(mediumRadius),
          borderSide: BorderSide(color: themeColors.danger, width: 1.0)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(mediumRadius),
          borderSide: BorderSide.none),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(mediumRadius),
          borderSide: BorderSide.none),
    ),

    /// AppBar
    appBarTheme: AppBarTheme(
      foregroundColor: themeColors.text,
      backgroundColor: Colors.transparent,
      actionsIconTheme: IconThemeData(color: themeColors.text),
      iconTheme: IconThemeData(color: themeColors.text),
      titleTextStyle:
      mainTextTheme.titleLarge?.copyWith(color: themeColors.text),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return themeColors.brand;
        }
        return null;
      }),
      checkColor: MaterialStateProperty.all(themeColors.onBrandText),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      side: BorderSide(width: 2, color: themeColors.caption),
    ),

    ///таббар
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: themeColors.brandedText,
      labelColor: themeColors.onBrandText,
      indicator: BoxDecoration(
        color: styles.themeColors.brand,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(styles.mainRadius),
        ),
      ),
    ),

    /// кнопки
    elevatedButtonTheme:
    ElevatedButtonThemeData(style: elevatedButtonStyle),
    filledButtonTheme: FilledButtonThemeData(style: filledButtonStyle),
    textButtonTheme: TextButtonThemeData(style: textButtonStyle),
    outlinedButtonTheme:
    OutlinedButtonThemeData(style: outlinedButtonStyle),
    buttonTheme: ButtonThemeData(buttonColor: themeColors.text),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return themeColors.brandedText;
            }
            return null;
          }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return themeColors.background;
            }
            return themeColors.cardColor;
          }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return themeColors.brand;
            }
            return themeColors.cardSecondaryColor;
          }),
    ),

    tooltipTheme: TooltipThemeData(
      preferBelow: false,
      verticalOffset: 12,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      textStyle: mainTextTheme.bodySmall
          ?.copyWith(color: themeColors.text, fontSize: 12),
      decoration: BoxDecoration(
        color: styles.themeColors.cardSecondaryColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(mainRadius),
      ),
    ),

    datePickerTheme: const DatePickerThemeData(
      surfaceTintColor: Colors.transparent,
    ),

    colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light, primarySwatch: swatch)
        .copyWith(secondary: themeColors.cardSecondaryColor)
        .copyWith(background: themeColors.background),
  );
}
