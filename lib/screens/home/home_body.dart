import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:let_us_travel/config/strings.dart';
import 'package:let_us_travel/screens/home/home_screen.dart';
import 'package:let_us_travel/screens/travelDetails/travel_screen.dart';

import '../../config/assets.dart';
import '../../config/colors.dart';
import '../../config/size.dart';
import '../../config/styles.dart';
import '../../models/model_home.dart';
class HomeBody extends StatefulWidget {
  const HomeBody({super.key});
  @override
  State<HomeBody> createState() => _HomeBodyState();
}
class _HomeBodyState extends State<HomeBody> {
  bool selected = true;
  late int selectedIndex;
  @override
  void initState() {
    super.initState();
    selectedIndex = 2;
  }
  String getShortWeekday(int index) {
    switch (index) {
      case 1:
        return 'Tu';
      case 2:
        return 'We';
      case 3:
        return 'Th';
      case 4:
        return 'Fri';
      case 5:
        return 'Sa';
      case 6:
        return 'Sun';
      case 7:
        return 'Mo';
      default:
        return '';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
        right:MediaQuery.of(context).size.width* 0.04 ,
    left:  MediaQuery.of(context).size.width* 0.05,),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
             ),
           elevation: 30.0,
           shadowColor: Colors.blueAccent.shade100.withOpacity(0.4),
           color: AppColors.white,
           surfaceTintColor:AppColors.white ,
           child:Padding(
             padding: EdgeInsets.only(
               top:MediaQuery.of(context).size.height* 0.05 ,
               bottom:MediaQuery.of(context).size.height* 0.04 ,
                 right:MediaQuery.of(context).size.width* 0.03 ,
                 left:  MediaQuery.of(context).size.width* 0.03,
               ),
             child: Column(
               children: [
                 Row(
                   children: [
                     Text(
                       AppStrings.appTitle,
                       style: h1Bold25FadedBlack,
                     ),

                     Spacer(),
                     InkWell( onTap: (){},
                         child: SvgPicture.asset(SvgAssets.sort)),
                   ],
                 ),
                 SizedBox(height: getProportionateScreenHeight(20)),
                 searchBar(),
                 SizedBox(height: getProportionateScreenHeight(28)),
                 Padding(
                   padding: EdgeInsets.only(
                     right:MediaQuery.of(context).size.width* 0.03,
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 43.0,
                         backgroundImage: AssetImage(ImageAssets.circle1),
                         backgroundColor: AppColors.avatar.withOpacity(0.03),
                       ),
                       Text.rich(
                         TextSpan(
                           children: [
                             TextSpan(
                               text: (AppStrings.card1),
                               style: h316Blue
                             ),
                             TextSpan(
                               text: (AppStrings.card2),
                               style:h316Blue.copyWith(color: AppColors.cardtext2Color,
                               fontWeight: FontWeight.w400,fontSize: 12),
                             ),
                           ],
                         ),
                       ),
                       Spacer(),
                       checkBox(),
                     ],
                   ),
                 ),
               ],
             ),
           )
         ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(AppStrings.popularLocs,style: h2TextFieldText13.copyWith(
                color: AppColors.lightblack, fontSize: 13
            ),),
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: images1.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TravelScreen(),
                        ),
                      );
                      },
                    child:  Container(
                      width:180,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(images1[index]),
                            fit: BoxFit.cover, // Adjust the BoxFit as needed
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).size.height * 0.01,
                                left: MediaQuery.of(context).size.width * 0.018,
                              ),
                              child: Text(
                                headings1[index],
                                style: h2TextFieldText13.copyWith(
                                  color: AppColors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).size.height * 0.02,
                                left: MediaQuery.of(context).size.width * 0.018,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    child: Icon(
                                      Icons.location_on_rounded,
                                      color: AppColors.iconColor,
                                      size: 15,
                                    ),
                                  ),
                                  Text(
                                    subheadings1[index],
                                    style: h2TextFieldText13.copyWith(
                                      color: AppColors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                  );
                },
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(AppStrings.wednesday,style: h2TextFieldText13.copyWith(
                color: AppColors.lightblack, fontSize: 13
            ),),
            SizedBox(height: getProportionateScreenHeight(20)),
            horizontalDateCalendar(),
          ],
        ),
      ),
    );
  }
  Widget horizontalDateCalendar() {
    return  Container(
       height: 101,
      // width: 580,
      child: Card(
        color: AppColors.highlighted,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 25,
            // itemCount: 31 - 13,
            itemBuilder: (context, index) {
              int day = index + 14;
              int dayNumber = index + 7;
              DateTime currentDate = DateTime(DateTime.now().year, 7, day);
              int desiredDay = DateTime.now().subtract(Duration(days: DateTime.now().weekday - DateTime.wednesday)).day;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? AppColors.tohighlight.withOpacity(0.8)
                        : null,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: getShortWeekday(currentDate.weekday), // Weekday name (e.g., Mon)
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  color: selectedIndex == index
                                      ? AppColors.white
                                      : AppColors.dayz,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              TextSpan(
                                text: '\n\n$dayNumber',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  color: selectedIndex == index
                                      ? AppColors.white
                                      : AppColors.datez,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );}
  Widget checkBox() {
    return SizedBox(
      child:
      InkWell(
        radius: 5,
        borderRadius: BorderRadius.circular(100.0),
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width:MediaQuery.of(context).size.width * 0.069,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: selected ? AppColors.primaryColor : Colors.white,
              border: Border.all(width: 2, color: AppColors.primaryColor)
          ),
          child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: selected ? Icon(
                Icons.check_rounded,
                size: 21.0,
                color: Colors.white,
              ) : Container()
          ),
        ),
      )
    );
  }
  Widget searchBar() {
    return SizedBox(
      height: getProportionateScreenHeight(50),
      child: TextField(
        style: const TextStyle(color: AppColors.textFieldTextColor),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.textFieldBorderColor,
              width: 0.9,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.textFieldColor,
              width: 0.9,
            ),
          ),
          filled: true,
          hintStyle: h2TextFieldText13,
          hintText: AppStrings.textfieldText,
          fillColor: AppColors.textFieldColor,
          suffixIcon: Icon(Icons.search,
              color: AppColors.textFieldTextColor, size: 24),
        ),
      ),
    );
  }
}


