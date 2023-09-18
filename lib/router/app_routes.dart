import 'package:aquatrack/screen/language_form_screen.dart';
import 'package:flutter/material.dart'; 

import 'package:aquatrack/models/menu_option.dart';
import 'package:aquatrack/screen/home_screen.dart';


class AppRoutes {
  static const initialRoute = 'language';

  static final menuOptions = <MenuOption>[
    //    MenuOption(title:'Home', iconData: Icons.home),
    MenuOption(
        route: 'home',
        name: 'Home',
        screen: const HomeScreen(),
        icon: Icons.home_max_outlined),
    MenuOption(
        route: 'language',
        name: 'Idomas',
        screen: const LanguageScreen(),
        icon: Icons.home_max_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'language': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

   static Route<dynamic> onGenerateRoute( RouteSettings settings) {
     return MaterialPageRoute(
         builder: (context) => const HomeScreen(),
     );
 }
}
