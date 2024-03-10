

import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';
import 'package:mvvm_architecture/view/screens/custom_screen.dart';

class  Routes{
  static Route<dynamic>
  generateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.demo:
        return MaterialPageRoute(builder: (context) => const DemoScreen(),);
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("No route Defined"),
            ),
          );
        },);
    }
  }
}