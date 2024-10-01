import 'package:flutter/material.dart';
import 'package:lex_application/Lex/SplashScreen.dart';
import 'package:lex_application/navigation/Routing.dart';

import 'navigation/ClassName.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SplashScreen(),
      initialRoute: ClassNames.homeScreen,
      onGenerateRoute: Routing.generateRoute,
    );
  }
}

