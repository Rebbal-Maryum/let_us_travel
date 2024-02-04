import 'package:flutter/material.dart';
import 'package:let_us_travel/screens/home/home_screen.dart';
import 'package:let_us_travel/screens/travelDetails/travel_body.dart';
import 'package:let_us_travel/screens/travelDetails/travel_screen.dart';
import 'package:let_us_travel/utils/storyBar.dart';
import 'config/size.dart';
import 'config/theme.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
     home: HomeScreen(),
    );
  }
}
