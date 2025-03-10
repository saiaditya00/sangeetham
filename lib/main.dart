import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangeetham/themes/theme.dart';
import 'package:sangeetham/themes/util.dart';
import 'package:sangeetham/views/homeScreen.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Sahitya", "Sahitya");

    MaterialTheme theme = MaterialTheme(textTheme);
    

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: Scaffold(
        
        body:HomeScreen()
      ),
       //getPages: Approutes.appRoutes(),
    );
  }
}
