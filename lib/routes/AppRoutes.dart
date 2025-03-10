import 'package:get/get.dart';
import 'package:sangeetham/routes/routes.dart';
import 'package:sangeetham/views/homeScreen.dart';

import 'package:sangeetham/views/splashScreen.dart';

class Approutes {
    static List<GetPage> appRoutes() => [
            GetPage(
                name: '/',
                page: () => Splashscreen(),
                transition: Transition.leftToRightWithFade,
                transitionDuration: Duration(milliseconds: 250)),
            GetPage(
                name: Routes.player,
                page: () => HomeScreen(),
                transition: Transition.size,
                transitionDuration: Duration(milliseconds: 250)),
            
        ];
  
  


 
}