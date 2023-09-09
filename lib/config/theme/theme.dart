import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 23, 22, 22),
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 23, 22, 22),
        primarySwatch: Colors.yellow,
        dividerColor: Colors.white.withOpacity(0.3),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
);