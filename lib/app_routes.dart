import 'package:fl_identity/screens/detalle.dart';
import 'package:fl_identity/screens/scan.dart';
import 'package:flutter/material.dart';

import 'package:fl_identity/models/routes_model.dart';
import 'package:fl_identity/screens/home.dart';
import 'package:fl_identity/screens/login.dart';

class AppRoutes{

  static const initialRoute = "detalle";

  static final optionsMenu = <MenuOptions> [
    MenuOptions(route: 'home', icon: Icons.home, name: "Home Screen", screen: HomeScreen()),
    MenuOptions(route: 'login', icon: Icons.login, name: "Login Screen", screen: LoginScreen()),
    MenuOptions(route: 'scan', icon: Icons.qr_code, name: "Scan Screen", screen: ScanScreen()),
    MenuOptions(route: 'detalle', icon: Icons.person, name: "Data Screen", screen: DetalleScreen()),
  ];

    static Map<String, Widget Function(BuildContext)> getAppRoutes(){
      Map<String, Widget Function(BuildContext)> appRoutes ={};
      
      for (final item in optionsMenu) {
        appRoutes.addAll({
          item.route : (BuildContext context) => item.screen
        });
      }
      return appRoutes;
    }

    static  Route<dynamic> onGenerateRoute(RouteSettings setting){
        return  MaterialPageRoute(builder: (context){
        return  const  HomeScreen();
    });
}

}