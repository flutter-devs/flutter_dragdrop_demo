import 'package:drag_and_drop/core/viewmodel/data.dart';
import 'package:drag_and_drop/ui/view/home.dart';
import 'package:drag_and_drop/ui/resources/constants.dart';
import 'package:drag_and_drop/ui/resources/constants.dart';
import 'package:drag_and_drop/ui/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
      title: 'GridView Demo',
      
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      
      routes: <String, WidgetBuilder>{
        Constants.SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        Constants.HOME_SCREEN: (BuildContext context) => ChangeNotifierProvider(
          builder: (context) => Data(),
          
          child: HomePage())
       
      },
      initialRoute: Constants.SPLASH_SCREEN,
);

  }
}








