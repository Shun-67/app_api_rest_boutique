import 'package:flutter/material.dart';

class PageDetailsProfil extends StatefulWidget {
  const PageDetailsProfil({super.key});

  @override
  State<PageDetailsProfil> createState() => _PageDetailsProfilState();
}

class _PageDetailsProfilState extends State<PageDetailsProfil> {
  @override
  Widget build(BuildContext context) {
    // Permet de récupérer les données depuis la page d'acceuil
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    print("-" * 100);
    print("Arguments recues depuis la page d'acceuil : ");
    print(args);

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading permet d'afficher ou pas le bouton de retour, true par défaut
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Profil - ${args["name"]}"),
      ),
      body: Center(
        child: SafeArea(
          bottom: true,
          child: Container(
            width: MediaQuery.of(context).size.width,
            // EdgeInsets.symetric permet de définir la marge pour la verticale et l'horizontale
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(100),
                  ),

                  child: Hero(
                    tag: args["id"],
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(args["image"]),
                      radius: 150,
                    ),
                  ),
                ),

                Text(
                  args["name"],
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                Text(
                  args["email"],
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
