import 'package:flutter/material.dart';

// Colores tema claro
const Color celestePrincipal = Color(0xFFB3E5FC); // Celeste base
const Color verdeAcento = Color(0xFF66BB6A); // Verde suave para acentos
const Color ambarClaro = Color(0xFFFFD54F); // Ámbar para elementos destacados
const Color rosaClaro = Color(0xFFFF80AB); // Rosa suave para variación

// Colores tema oscuro
const Color moradoPrincipal = Color(0xFF7986CB); // Morado base
const Color turquesaOscuro = Color(0xFF00796B); // Turquesa para acentos
const Color coralOscuro = Color(0xFFFF5252); // Coral para alertas/énfasis
const Color doradoOscuro =
    Color(0xFFFFB300); // Dorado para elementos especiales

// Colores comunes
const Color blanco = Color(0xFFFFFFFF);
const Color negro = Color(0xFF000000);
const Color grisClaro = Color(0xFFF5F5F5);
const Color grisOscuro = Color(0xFF424242);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: celestePrincipal,
    secondary: verdeAcento,
    tertiary: ambarClaro,
    error: rosaClaro,
    surface: blanco,
    shadow: grisOscuro.withOpacity(0.1),
  ),
  scaffoldBackgroundColor: celestePrincipal,
  textTheme: const TextTheme(
    displaySmall: TextStyle(
        color: Color(0xFF37474F),
        fontSize: 13,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        letterSpacing: -0.41),
    labelLarge: TextStyle(
        color: Color(0xFF37474F),
        fontSize: 17,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        letterSpacing: -0.41),
    labelSmall: TextStyle(
        color: Color(0xFF37474F),
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        letterSpacing: -0.41),
    bodyLarge:
        TextStyle(color: Color(0xFF37474F), fontFamily: 'Roboto', fontSize: 16),
    bodyMedium:
        TextStyle(color: Color(0xFF37474F), fontFamily: 'Roboto', fontSize: 14),
    bodySmall: TextStyle(color: grisOscuro, fontFamily: 'Roboto', fontSize: 12),
    labelMedium: TextStyle(
      color: verdeAcento,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    titleLarge: TextStyle(
        color: Color(0xFF37474F),
        fontWeight: FontWeight.bold,
        fontSize: 36,
        fontFamily: 'Roboto'),
    titleMedium: TextStyle(
        color: verdeAcento,
        fontWeight: FontWeight.bold,
        fontSize: 34,
        fontFamily: 'Roboto'),
    titleSmall: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w300,
        color: ambarClaro,
        fontFamily: 'Poppins',
        letterSpacing: 5),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: celestePrincipal,
    elevation: 0,
    iconTheme: IconThemeData(color: verdeAcento),
    titleTextStyle: TextStyle(
      color: grisOscuro,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: verdeAcento,
    foregroundColor: blanco,
  ),
  cardTheme: CardTheme(
    color: blanco,
    elevation: 2,
    shadowColor: grisOscuro.withOpacity(0.1),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: moradoPrincipal,
    secondary: turquesaOscuro,
    tertiary: doradoOscuro,
    error: coralOscuro,
    surface: grisOscuro,
    shadow: negro.withOpacity(0.3),
  ),
  scaffoldBackgroundColor: moradoPrincipal,
  textTheme: TextTheme(
    displaySmall: const TextStyle(
        color: blanco,
        fontSize: 13,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        letterSpacing: -0.41),
    labelLarge: TextStyle(
        color: blanco.withOpacity(0.9),
        fontSize: 17,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        letterSpacing: -0.41),
    labelSmall: TextStyle(
        color: blanco.withOpacity(0.9),
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        letterSpacing: -0.41),
    bodyLarge: TextStyle(
        color: blanco.withOpacity(0.9), fontFamily: 'Roboto', fontSize: 16),
    bodyMedium: TextStyle(
        color: blanco.withOpacity(0.9), fontFamily: 'Roboto', fontSize: 14),
    bodySmall: TextStyle(
        color: blanco.withOpacity(0.7), fontFamily: 'Roboto', fontSize: 12),
    labelMedium: const TextStyle(
      color: turquesaOscuro,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    titleLarge: const TextStyle(
        color: blanco,
        fontWeight: FontWeight.bold,
        fontSize: 36,
        fontFamily: 'Roboto'),
    titleMedium: const TextStyle(
        color: doradoOscuro,
        fontWeight: FontWeight.bold,
        fontSize: 34,
        fontFamily: 'Roboto'),
    titleSmall: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w300,
        color: blanco,
        fontFamily: 'Poppins',
        letterSpacing: 5),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: moradoPrincipal,
    elevation: 0,
    iconTheme: IconThemeData(color: doradoOscuro),
    titleTextStyle: TextStyle(
      color: blanco,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: turquesaOscuro,
    foregroundColor: blanco,
  ),
  cardTheme: CardTheme(
    color: grisOscuro,
    elevation: 2,
    shadowColor: negro.withOpacity(0.3),
  ),
);
