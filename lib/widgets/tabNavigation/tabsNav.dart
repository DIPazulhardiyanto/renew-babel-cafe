import 'package:flutter/material.dart';
import '../../views/adminMenu/index.dart';
import '../../views/home/home.dart';
import '../../views/pesanan/index.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: HomePage(),
      icon: Icon(Icons.home_outlined),
      title: Text("Home"),
    ),
    TabNavigationItem(
      page: PesananPage(),
      icon: Icon(Icons.shopping_basket_outlined),
      title: Text("Pesanan"),
    ),
    TabNavigationItem(
      page: IndexAdmin(),
      icon: Icon(Icons.admin_panel_settings_outlined),
      title: Text("Admin"),
    ),
  ];
}
