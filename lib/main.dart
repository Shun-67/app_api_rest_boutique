import 'package:app_api_rest_boutique/pages/page_acceuil.dart';
import 'package:app_api_rest_boutique/utils/app_constants.dart';
import 'package:app_api_rest_boutique/utils/routeur.dart';
import 'package:app_api_rest_boutique/utils/theme_perso.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.nomDeApplication,

      // debugShowCheckedModeBanner permet d'enlever le debug mode qu'on voit dans l'application en haut à droite
      debugShowCheckedModeBanner: false,

      // Définir le thème de l'application
      themeMode:
          ThemeMode.system, // S'adapte en fonction du thème de l'appareil
      // Définir les couleurs en mode clair et en mode sombre
      theme: ThemePerso
          .modeClair, // On utilise l'attribut "theme" pour définir le mode clair
      darkTheme: ThemePerso
          .modeSombre, // On utilise l'attribut "darktheme" pour définir le mode sombre
      // Les attributs modeClair et modeSombre sont des attributs staitique de ThemePerso donc ThemePerso est abstract

      // Définir la route initiale (la page d'entrée)
      initialRoute: Routeur.routeInitiale,

      // On peut utiliser home à la place de initialRoute aussi
      routes: Routeur.routes,

      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => PageAcceuil()),
    );
  }
}
