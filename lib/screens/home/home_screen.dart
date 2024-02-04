import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:let_us_travel/config/colors.dart';
import '../../components/appbar.dart';
import '../../config/assets.dart';
import '../../config/strings.dart';
import 'home_body.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      backgroundColor:AppColors.white,
      body: const HomeBody(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.orangee,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(300),
            topLeft: Radius.circular(300),
            bottomLeft: Radius.circular(300),
            bottomRight: Radius.circular(300),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(300),
            topRight: Radius.circular(300),
            bottomLeft: Radius.circular(300),
            bottomRight: Radius.circular(300),
          ),
          child: BottomNavigationBar(
            selectedItemColor: AppColors.tohighlight,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: AppColors.orangee,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: AppColors.orangee,
                label: '',
                icon: SvgPicture.asset(SvgAssets.home),
              ),
              BottomNavigationBarItem(
                label: 'bell',
                icon: SvgPicture.asset(SvgAssets.bell),
              ),
              BottomNavigationBarItem(
                label: 'person',
                icon: SvgPicture.asset(SvgAssets.person),
              ),
              BottomNavigationBarItem(
                label: 'forward',
                icon: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

