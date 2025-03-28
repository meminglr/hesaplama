import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hesaplama/screens/anasayfa.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.grey[100], // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icons' color
    systemNavigationBarIconBrightness:
        Brightness.dark, //navigation bar icons' color
  ));
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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Theme.of(context).primaryColor),
        useMaterial3: true,
        fontFamily: 'Comfortaa',
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Comfortaa',
              fontSizeFactor: 1,
              fontSizeDelta: 15,
            ),
      ),
      home: const Anasayfa2(),
    );
  }
}
