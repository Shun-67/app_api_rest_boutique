import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PageBoutique extends StatefulWidget {
  const PageBoutique({super.key});

  @override
  State<PageBoutique> createState() => _PageBoutiqueState();
}

class _PageBoutiqueState extends State<PageBoutique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Page Boutique"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CarouselSlider(
              items: [
                Image.asset("assets/images/logo_esmt.jpeg"),
                Image.asset("assets/images/logo_esmt.jpeg"),
                Image.asset("assets/images/logo_esmt.jpeg"),
                Image.asset("assets/images/logo_esmt.jpeg"),
                Image.asset("assets/images/logo_esmt.jpeg"),
              ], 
              options: CarouselOptions(
                  height: 200,
                  // Permet d'afficher de l'espace entre les différents éléments
                  aspectRatio: 10 / 9,
                  viewportFraction: 0.6,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(microseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
              )
              ),
            Text("Carrousel"),
            Expanded(
              child: SafeArea(
                bottom: true,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        Text("Liste des produits"),
                        ],
                        ),
                        ),
                  // Le widget Expanded permet d'occuper tout le reste de l'espace disponible
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
