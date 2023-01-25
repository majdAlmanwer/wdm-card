import 'package:flutter/material.dart';
import 'package:wdm_card/screens/start-secreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WDM CARD',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen()
        // EasySplashScreen(
        //   logoSize: 100,
        //   logo: Image.asset(
        //     'assets/images/1221212.png',
        //     height: 1,
        //     width: 1,
        //   ),
        //   backgroundImage: AssetImage(
        //     'assets/images/1221212.png',
        //   ),
        //   showLoader: false,
        //   // loadingText: const Text(
        //   //   " Loading ..",
        //   //   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        //   // ),
        //   navigator: (),
        //   durationInSeconds: 5,
        // )
        );
  }
}
