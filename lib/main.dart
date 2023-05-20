import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'widgets/searchBox.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'widgets/card.dart';
import 'widgets/splash.dart';
import 'data.dart';

void main() {
  runApp(const MyApp());
}

class ConnectionService {
  Future<bool> get isConnected async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      print(connectivityResult);
      return false;
    } else {
      print(connectivityResult);
      return true;
    }
  }
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SplashScreen(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back_ios_new),
          //   color: Colors.white,
          //   onPressed: () {},
          //   splashColor: Colors.transparent,
          //   highlightColor: Colors.transparent,
          // ),
          backgroundColor: Colors.black87,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'KODLINE',
              style: TextStyle(
                  fontFamily: GoogleFonts.raleway().fontFamily,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
            ),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BodyWidget(),
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: Column(
        children: [
          SearchBox(),
          // SearchBar( onChanged: _searchCards),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 5),
            alignment: Alignment.centerLeft,
            child: Text('Siteler',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.raleway().fontFamily,
                    fontWeight: FontWeight.bold)),
          ),
          Container(child: BodyCard()),
        ],
      ),
    );
  }
}

void searchFunction(String value){
  cardData.forEach((title) {
    
  });
}

