import 'package:dreams_app/pages/explanation_page.dart';
import 'package:dreams_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const DreamsApp());
}

class DreamsApp extends StatelessWidget {
  const DreamsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Tajawal'),
      routes: {
        HomePage.id: (context) => const HomePage(),
        ExplanationPage.id: (context) => const ExplanationPage(),
      },
      initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,
      title: 'Localizations Sample App',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // English, no country code
      ],
    );
  }
}
