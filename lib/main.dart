import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant/screens/charcter_description.dart';
import 'package:valorant/screens/home.dart';
import 'package:valorant/utils/app_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Home.routename: (_) => Home(),
        },
        initialRoute: Home.routename,
      ),
    );
  }
}
