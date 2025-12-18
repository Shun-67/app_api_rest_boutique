import 'package:flutter/material.dart';

// Le modèle MVVM regroupe trois parties
// Le View qui gère l'affichage (pages...)
// Le ViewModel qui prépare et gère le traitement les données
// le Model qui définit la struture de la donnée
// 

// ThemePerso n'a pas besoin d'être instancié donc il est abstract
abstract class ThemePerso {
  static final modeClair = ThemeData(
    // Définir le schéma de couleur
    colorScheme: ColorScheme.fromSeed(
      // l'attribut onPrimary définit la couleur des éléments dans le widget de couleur primary
      seedColor: Colors.white,
      primary: Colors.greenAccent,
      secondary: Colors.pink.shade800,
      tertiary: Colors.greenAccent.shade200,
      // tertiary: Color(0xFF9EEFFD),

      // tertiary: Color.fromARGB(255, 219, 250, 255),
      error: Colors.red,
    ),

    // Permet d'utiliser le material de la version 3 qui permet d'utiliser les derniers modèlles vancées e n design
    useMaterial3: true,

    // listTileTheme: ListTileThemeData(
    //   selectedTileColor: Colors.greenAccent.shade100,
    //   selectedColor: Colors.black,
    // ),

    // Definir les couleurs de l'appBar
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),

    // Définir le style pour les texte
    textTheme: TextTheme(
      // Les titre dans le contenu d'une page sont des title
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),

      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

      titleSmall: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),

      // Les titres les plus importants qui définissent toutes une section sont des headline
      headlineLarge: TextStyle(
        color: Colors.black,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),

      headlineMedium: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),

      headlineSmall: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),

      // Les textes dans les corps sont des body
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),

      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),

      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
  );

  static final modeSombre = ThemeData(
    // Définir le schéma de couleur
    colorScheme: ColorScheme.fromSeed(
      // l'attribut onPrimary définit la couleur des éléments dans le widget de couleur primary
      seedColor: Colors.grey.shade900,
      primary: Colors.pink,
      secondary: Colors.pink.shade800,
      tertiary: Colors.blueGrey,
      error: Colors.red,
    ),

    // Permet d'utiliser le material de la version 3
    useMaterial3: true,

    // Definir les couleurs de l'appBar
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),

    // Définir le style pour les texte
    textTheme: TextTheme(
      // Les titre dans le contenu d'une page sont des title
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),

      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),

      // Les titres les plus importants qui définissent toutes une section sont des headline
      headlineLarge: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),

      headlineMedium: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),

      headlineSmall: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),

      // Les textes dans les corps sont des body
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),

      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
