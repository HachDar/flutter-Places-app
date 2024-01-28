import 'package:flutter/material.dart';
import 'package:zakrny_app/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:zakrny_app/screens/category_trips_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'),
      ],
      title: 'TruvelApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5: TextStyle(color: Colors.blue,
          fontSize: 24,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,

          ),
          headline6: TextStyle(color: Colors.white,
          fontSize: 26,
         fontFamily: 'ElMessiri',
         fontWeight: FontWeight.bold,
        ),

      ),
      ),
       // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/' : (ctx)=>CategoriesScreen(),
        CategoryTripsScreen.screenRout: (ctx)=> CategoryTripsScreen(),
      },

    );

  }
}

