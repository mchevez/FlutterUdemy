import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    //TODO: BORRAR HOME
    // MenuOptions(route: 'home',  name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_rounded),
    MenuOptions(route: 'listview1',  name: 'Listview Tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOptions(route: 'listview2',  name: 'Listview Tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOptions(route: 'alert',  name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOptions(route: 'card',  name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOptions(route: 'avatar',  name: 'Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOptions(route: 'animated',  name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline),
    MenuOptions(route: 'inputs',  name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOptions(route: 'slider',  name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.slideshow_rounded),

  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)>  appRoutes = {};
  appRoutes.addAll({'home':(BuildContext context) => const HomeScreen()});      

    for (final option in menuOptions) {
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});      
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home':(BuildContext context) => const HomeScreen(), 
  //       'listview1':(BuildContext context) => const ListView1Screen(), 
  //       'listview2':(BuildContext context) => const ListView2Screen(), 
  //       'alert':(BuildContext context) => const AlertScreen(), 
  //       'card':(BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings)
  {
        print(settings);
        return MaterialPageRoute(builder: (context) => const ListView1Screen());
  }
}