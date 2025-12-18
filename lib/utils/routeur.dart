
import 'package:app_api_rest_boutique/pages/page_acceuil.dart';
import 'package:app_api_rest_boutique/pages/page_boutique.dart';
import 'package:app_api_rest_boutique/pages/page_compteur.dart';
import 'package:app_api_rest_boutique/pages/page_details_profil.dart';
import 'package:flutter/material.dart';

abstract class Routeur {
  static const String routeInitiale = '/page-compteur';
  static const String pageCompteur = '/page-compteur';
  static const String pageAcceuil = '/page-acceuil';
  static const String detailsProfil = '/page-details-profil';
  static const String pageBoutique = '/page-boutique';
  // il est permis d'utiliser voir recommendé d'utiliser les tirets pour le nom des routes
  // Mettre un const signifierait qu'on connait exactement les valeurs
  // Puisque les routes ne sont pas directement connu, on utilise final
  static final Map<String, WidgetBuilder> routes = {
    pageCompteur : (context) => PageCompteur(),
    pageAcceuil : (context) => PageAcceuil(),
    detailsProfil : (context) => PageDetailsProfil(),
    pageBoutique : (context) => PageBoutique(),
  };


}