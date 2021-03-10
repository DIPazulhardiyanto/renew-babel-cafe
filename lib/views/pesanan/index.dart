import 'package:flutter/material.dart';

import '../home/pageSpecialMenu.dart';
import 'homePesanan.dart';

class PesananPage extends StatelessWidget {
  static const String routeName = '/home';

  PesananPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = PageHomePesanan();
          if (settings.name == '2') page = PageSpecialMenu();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}
