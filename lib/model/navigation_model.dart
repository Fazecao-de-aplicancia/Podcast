import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({
    this.title,
    this.icon
  });
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Home", icon: Icons.home),
  NavigationModel(title: "Busca", icon: Icons.search),
  NavigationModel(title: "Favoritos", icon: Icons.favorite),
  NavigationModel(title: "Minha lista", icon: Icons.list),
  NavigationModel(title: "Usuário", icon: Icons.account_circle)
];