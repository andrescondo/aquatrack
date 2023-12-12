import 'package:aquatrack/screen/example.dart';
import 'package:flutter/material.dart'; 

import 'package:aquatrack/screen/screen.dart';
import 'package:aquatrack/models/menu_option.dart';



class AppRoutes {
  static const initialRoute = '/language';

  static final menuOptions = <MenuOption>[
    //    MenuOption(title:'Home', iconData: Icons.home),
    MenuOption(
        route: '/',
        name: 'Home',
        screen: const HomeScreen(),
        icon: Icons.home_max_outlined),
    MenuOption(
        route: '/language',
        name: 'Idomas',
        screen: const LanguageScreen(),
        icon: Icons.home_max_outlined),
    MenuOption(
        route: '/welcome',
        name: 'Welcome',
        screen: const WelcomeScreen(),
        icon: Icons.home_max_outlined),
    MenuOption(
        route: '/sex',
        name: 'Sex',
        screen: const SexFormScreen(),
        icon: Icons.generating_tokens),
    MenuOption(
        route: '/weight',
        name: 'weight',
        screen: const WeightFormScreen(),
        icon: Icons.generating_tokens),
    MenuOption(
        route: '/example',
        name: 'example',
        screen: MyHomePage(key: null, title: 'test',),
        icon: Icons.generating_tokens),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'/language': (BuildContext context) => const LanguageScreen()});

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
