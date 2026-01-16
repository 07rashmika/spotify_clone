import 'package:flutter/material.dart';

import 'package:spotify_clone/models/colors.dart';

ThemeData spotifyTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: SpotifyColors.black,
  primaryColor: SpotifyColors.green,

  appBarTheme: AppBarTheme(
    backgroundColor: SpotifyColors.darkGrey,
    foregroundColor: SpotifyColors.white,
  ),

  textTheme: TextTheme(
    bodyLarge: TextStyle(color: SpotifyColors.white),
    bodyMedium: TextStyle(color: SpotifyColors.lightGrey),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: SpotifyColors.green,
      foregroundColor: SpotifyColors.white,
    ),
  ),

  colorScheme: ColorScheme.dark(
    primary: SpotifyColors.green,
    surface: SpotifyColors.darkGrey,
  ),
);
