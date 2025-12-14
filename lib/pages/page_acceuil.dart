import 'dart:convert';

import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:app_api_rest_boutique/services/api_services.dart';
import 'package:flutter/material.dart';

class PageAcceuil extends StatefulWidget {
  const PageAcceuil({super.key});

  @override
  State<PageAcceuil> createState() => _PageAcceuilState();
}

class _PageAcceuilState extends State<PageAcceuil> {
  List<Map<String, dynamic>> data = [];
  // Variable interne qui permet de vérifier si le chargement est en cours
  bool _isLoading = false;

  @override
  // Elle permet d'initialiser les variables et la page. Elle n'est appellée q'une seule fois malgré setState
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiServices apiServices = ApiServices();
    _isLoading = true;
    // le .then permet d'éviter d'utiliser await et contient une fonction callback
    apiServices.getData("https://jsonplaceholder.typicode.com/users").then((
      result,
    ) {
      print(jsonEncode(result));
      setState(() {
        _isLoading = false;
        data = List<Map<String, dynamic>>.from(result);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Page Acceuil"),
      ),

      body: Center(
        child: SafeArea(
          bottom: true,
          child: Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),

            child: _isLoading
                ? CircularProgressIndicator()
                : ((data.isNotEmpty)
                      ? ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=${data[index]["id"]}"),
                              radius: 60,
                            ),
                            title: Text(data[index]["name"]),
                            subtitle: Text(data[index]["email"]),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Theme.of(context).colorScheme.tertiary,
                            thickness: 4,
                          );
                        },
                        itemCount: data.length,
                      )
                      : Text(
                          "Liste vide !",
                          style: Theme.of(context).textTheme.headlineMedium,
                        )),
          ),
        ),
      ),
    );
  }
}
