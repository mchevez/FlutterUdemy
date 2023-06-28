
import 'package:flutter/material.dart';

class AppThemes{

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Primary Colors
        primaryColor: Colors.indigo,
        //AppBarTheme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 5,
          //padding: EdgeInsets.only(top: 10)
        ),
        
        // TEXTBUTTON THEME
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)
        ),
        
        //FloattinActions Button
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
        ),
        
        //elevationbutton Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppThemes.primary,
            elevation: 0,
            shape: const StadiumBorder()
          )
        ),
        
      //theme input decoration
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), 
              topRight: Radius.circular(10)
            ),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), 
              topRight: Radius.circular(10)
            ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), 
              topRight: Radius.circular(10)
            ),
        )

    )
      
  );

  static final ButtonStyle buttonTheme = TextButton.styleFrom(foregroundColor: primary); 

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Primary Colors
        primaryColor: Colors.indigo,
        //AppBarTheme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 10
        ),
        scaffoldBackgroundColor: Colors.black,
      );
}