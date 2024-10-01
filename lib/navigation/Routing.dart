import 'package:flutter/material.dart';
import 'package:lex_application/Lex/AddExperience.dart';
import 'package:lex_application/Lex/DrawerScreen.dart';
import 'package:lex_application/Lex/HomeScreen.dart';
import 'package:lex_application/Lex/LogIn.dart';
import 'package:lex_application/Lex/MapScreen.dart';
import 'package:lex_application/Lex/ProfileScreen.dart';
import 'package:lex_application/Lex/SearchScreen.dart';
import 'package:lex_application/Lex/SignUp.dart';
import 'package:lex_application/Lex/SplashScreen.dart';
import 'package:lex_application/navigation/ClassName.dart';

class Routing{
  static Route<dynamic>generateRoute(RouteSettings settings)
  {

    switch(settings.name)
        {

      case ClassNames.splashScreen:
        return MaterialPageRoute(builder: (context)=>const SplashScreen());
      case ClassNames.signUp:
        return MaterialPageRoute(builder: (context)=>const SignUp());
      case ClassNames.logIn:
        return MaterialPageRoute(builder: (context)=>const LoginScreen());
      case ClassNames.homeScreen:
        return MaterialPageRoute(builder: (context)=>const HomeScreen());
      case ClassNames.searchScreen:
        return MaterialPageRoute(builder: (context)=>const SearchScreen());
      case ClassNames.profileScreen:
        return MaterialPageRoute(builder: (context)=>const ProfileScreen());
      case ClassNames.mapScreen:
        return MaterialPageRoute(builder: (context)=>const MapScreen());
      case ClassNames.addExperience:
        return MaterialPageRoute(builder: (context)=>const AddExperienceScreen());
      case ClassNames.drawerScreen:
        return MaterialPageRoute(builder: (context)=>const DrawerScreen());






          default:
            return MaterialPageRoute(builder: (context){
              return const Scaffold(body: Center(child: Text("No screen"),),);
            });
    }

  }
}