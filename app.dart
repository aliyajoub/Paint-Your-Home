import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'presentation/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'config/app_localizations.dart';

class JarabLawnukApp extends StatefulWidget {
  const JarabLawnukApp({Key? key}) : super(key: key);

  @override
  State<JarabLawnukApp> createState() => _JarabLawnukAppState();
}

class _JarabLawnukAppState extends State<JarabLawnukApp> {
  Locale _locale = const Locale('ar');

  void _toggleLocale() {
    setState(() {
      _locale = _locale.languageCode == 'ar' ? const Locale('en') : const Locale('ar');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Try Your Color',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      locale: _locale,
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: HomeScreen(toggleLocale: _toggleLocale),
    );
  }
}