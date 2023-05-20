import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: ConnectionService().isConnected,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.data == true) {
          print("Device is connected to internet.");
          return AnimatedSplashScreen(
            duration: 2500,
            backgroundColor: Colors.black,
            splash: './assets/images/indir.png',
            nextScreen: HomePage(),
            splashTransition: SplashTransition.fadeTransition,
          );
        } else {
          print("Device is connected to wifi.");
          return Center(
            child: Text("Lütfen Mobil Veriyi Açınız", style: TextStyle(fontSize: 20,decoration: TextDecoration.none, color: Colors.white, fontFamily: GoogleFonts.raleway().fontFamily)),
          );
        }
      },
    );
  }
}


// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     ConnectionService();
//     return AnimatedSplashScreen(
//       duration: 2500,
//       backgroundColor: Colors.black,
//       splash: './assets/images/indir.png',
//       nextScreen: HomePage(),
//       splashTransition: SplashTransition.fadeTransition,
//     );
//   }
// }
// }
