import 'package:app_api_rest_boutique/utils/routeur.dart';
import 'package:flutter/material.dart';

class EndDrawerPerso extends StatefulWidget {
  const EndDrawerPerso({super.key});

  @override
  State<EndDrawerPerso> createState() => _EndDrawerPersoState();
}

class _EndDrawerPersoState extends State<EndDrawerPerso> {
  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text("Menu"),
            ),
          ),

          ListTile(
            selected: currentRoute == Routeur.pageAcceuil,
            leading: Icon(Icons.home),
            // tileColor: Theme.of(context).colorScheme.tertiary,
            title: Text("Acceuil"),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                Routeur.pageAcceuil,
                (predicate) => false,
              );
            },
          ),

          Divider(color: Theme.of(context).colorScheme.tertiary, thickness: 2),

          ListTile(
            selected: currentRoute == Routeur.pageCompteur,
            leading: Icon(Icons.countertops),
            // tileColor: Theme.of(context).colorScheme.tertiary,
            title: Text("Compteur"),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                Routeur.pageCompteur,
                (predicate) => false,
              );
            },
          ),

          Divider(color: Theme.of(context).colorScheme.tertiary, thickness: 2),

          // ListTile(
          //   selected: currentRoute == Routeur.detailsProfil,
          //   leading: Icon(Icons.person),
          //   // tileColor: Theme.of(context).colorScheme.tertiary,
          //   title: Text("Détails profil"),
          //   onTap: () {
          //     Navigator.pushNamedAndRemoveUntil(
          //       context,
          //       Routeur.detailsProfil,
          //       (predicate) => false,
          //     );
          //   },
          // ),

          // Divider(color: Theme.of(context).colorScheme.tertiary, thickness: 2),

          ListTile(
            // selected: currentRoute == Routeur.detailsProfil,
            leading: Icon(Icons.shop),
            // tileColor: Theme.of(context).colorScheme.tertiary,
            title: Text("Boutique"),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                Routeur.pageBoutique,
                (predicate) => false,
              );
            },
          ),

          Divider(color: Theme.of(context).colorScheme.tertiary, thickness: 2),
        ],
      ),
    );
  }
}
