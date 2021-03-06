import 'package:flutter/material.dart';
import 'package:pet_shop_and_care_tips/views/animal_screen/animal_screen.dart';
import 'package:pet_shop_and_care_tips/views/home_screen/home_screen.dart';
import 'package:pet_shop_and_care_tips/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet shop and Care Tips',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (_) => const SplashScreen(),
        "/home": (_) => const HomeScreen(),
        "/animal": (_) => const AnimalScreen(),
      },
      initialRoute: '/',
    );
  }
}
