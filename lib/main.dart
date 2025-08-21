import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

final ColorScheme colorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(30, 254, 232, 1),
);
final ColorScheme darkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 0, 202, 155),
  brightness: Brightness.dark,
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: darkColorScheme,
        cardTheme: CardTheme().copyWith(
          color: darkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkColorScheme.primaryContainer,
            foregroundColor: darkColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: darkColorScheme.onSecondaryContainer,
          ),
          titleMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: darkColorScheme.onSecondaryContainer,
          ),
          bodyLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: darkColorScheme.onSecondaryContainer,
          ),
          bodyMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: darkColorScheme.onSecondaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: colorScheme,
        appBarTheme: AppBarTheme().copyWith(
          color: colorScheme.onPrimaryContainer,
          foregroundColor: colorScheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: colorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primaryContainer,
            foregroundColor: colorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: colorScheme.onSecondaryContainer,
          ),
        ),
      ),
      home: Expenses(),
    ),
  );
}
