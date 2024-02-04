import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/colors.dart';
import '../config/size.dart';
import '../config/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final String assetPath;


  const CustomAppBar({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.assetPath,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Padding(
      padding: EdgeInsets.only(
        top:  MediaQuery.of(context).size.height* 0.1,
        left:  MediaQuery.of(context).size.width* 0.015,
        right:  MediaQuery.of(context).size.width* 0.015,),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: h1Bold25FadedBlack,
                ),
                // SizedBox(width: getProportionateScreenHeight(300)),
                Spacer(),
                InkWell( onTap: (){},
                    child: SvgPicture.asset(assetPath!)),
              ],
            ),
            Text(
              subtitle,
              // style: h1Bold24Black.copyWith(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
