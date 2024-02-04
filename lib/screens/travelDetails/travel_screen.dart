import 'package:flutter/material.dart';
import 'package:let_us_travel/screens/travelDetails/travel_body.dart';
class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TravelBody(),
    );
  }
}
