
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_cosas/src/pages/alert_page.dart';
import 'package:flutter_cosas/src/routes/routes.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
         GlobalMaterialLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,
         GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],

      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        
        return MaterialPageRoute(
          builder: (context) => AlertPage(),
        );

      },
    );
  }
}