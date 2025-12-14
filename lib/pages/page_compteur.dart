import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:flutter/material.dart';

class PageCompteur extends StatefulWidget {
  const PageCompteur({super.key});

  @override
  State<PageCompteur> createState() => _PageCompteurState();
}

class _PageCompteurState extends State<PageCompteur> {
  int _compteur = 0;
  @override
  Widget build(BuildContext context) {
    print("Construction de la page compteur");
    return Scaffold(
      endDrawer: EndDrawerPerso(),

      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Page Compteur"),
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
      ),

      body: Center(
        // SafeArea permet au widget de ne pas déborder
        child: SafeArea(
          bottom: true,
          child: Container(
            margin: EdgeInsets.all(10),
            // MediaQuery.of(context).size.width permet de récupérer la largeur de l'écran
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 3,
              ),
              // borderRadius: BorderRadius.circular(10),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize
                  .max, // ne pas utiliser le max quand la colonne est scrollable
              children: [
                Text("Valeur :", style: Theme.of(context).textTheme.titleLarge),
                Text(
                  "$_compteur",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Cliquer sur le bouton en bas pour incrémenter",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Permet à la méthode build d'être rappelé pour reconstruire la page
          setState(() {
            _compteur++;
          });
          print("La valeur de compteur est : $_compteur");
        },
        child: const Icon(Icons.add),
        ),
    );
  }
}
