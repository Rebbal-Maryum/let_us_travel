import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/assets.dart';
import '../../config/colors.dart';
import '../../config/size.dart';
import '../../config/strings.dart';
import '../../config/styles.dart';
import '../../models/model_travel.dart';
import '../../utils/storyBar.dart';
class TravelBody extends StatefulWidget {
  const TravelBody({super.key});

  @override
  State<TravelBody> createState() => _TravelBodyState();
}

class _TravelBodyState extends State<TravelBody> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
     padding: EdgeInsets.only(
      top:MediaQuery.of(context).size.height* 0.06,
      right:MediaQuery.of(context).size.width* 0.06,
      left:  MediaQuery.of(context).size.width* 0.06,),
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: (AppStrings.title1),
                          style: h316Blue.copyWith(fontWeight: FontWeight.w400,
                            color: AppColors.title1,)
                      ),
                      TextSpan(
                        text: (AppStrings.title2),
                        style:h316Blue.copyWith(color: AppColors.title2,
                            fontWeight: FontWeight.w900,fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                InkWell( onTap: (){},
                    child: SvgPicture.asset(SvgAssets.sort)),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Padding(
            padding:  EdgeInsets.only(
    right:MediaQuery.of(context).size.width* 0.06,
    left:  MediaQuery.of(context).size.width* 0.06,),
            child: Container(
              height: 100,
                width:getProportionateScreenWidth(375.0),
                child: storybar()),
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          Padding(
            padding:  EdgeInsets.only(
    right:MediaQuery.of(context).size.width* 0.06,
    left:  MediaQuery.of(context).size.width* 0.06,),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.title1,  // Your background color
                borderRadius: BorderRadius.circular(20.0),
              ),
              height:MediaQuery.of(context).size.height* 0.12 ,
              width: getProportionateScreenWidth(375.0),
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                               text: (AppStrings.profile),
                               style: h414White
                          ),
                          TextSpan(
                             text: (AppStrings.personalInfo),
                             style:h414White.copyWith(color: AppColors.sub,
                                 fontWeight: FontWeight.w500,fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child:SvgPicture.asset(SvgAssets.forward),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(CircleBorder()),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(MediaQuery.of(context).size.width * 0.037), // Adjust padding as needed
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          AppColors.primaryColor2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(50)),
          stacked(),
        ],
      ),
    );
  }
  Widget stacked()
  {return Stack(
      children:[ Container(
        height: 440,
        width: getProportionateScreenWidth(375.0),
        decoration: BoxDecoration(
          color: AppColors.primaryColor2,  // Your background color
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding:  EdgeInsets.only(
            top:MediaQuery.of(context).size.height* 0.035,
            right:MediaQuery.of(context).size.width* 0.06,
            left:  MediaQuery.of(context).size.width* 0.06,),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(SvgAssets.location),
              Text(AppStrings.bestLocs,
                style: h2TextFieldText13.copyWith(color: AppColors.white,),),
            ],
          ),
        ),
      ),
        Positioned(
          top: MediaQuery.of(context).size.height* 0.1 ,
          child: Container(
            height: 440,
            width: getProportionateScreenWidth(375.0),
            decoration: BoxDecoration(
              color: AppColors.white,  // Your background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top:MediaQuery.of(context).size.height* 0.045,
                right:MediaQuery.of(context).size.width* 0.04,
                left:  MediaQuery.of(context).size.width* 0.04,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width:112,
                        height: 129,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageAssets.mumbai),
                            fit: BoxFit.cover, // Adjust the BoxFit as needed
                          ),
                          borderRadius: BorderRadius.circular(26.0),
                        ),),
                      Padding(
                        padding:EdgeInsets.only(
                          top:MediaQuery.of(context).size.height* 0.01,
                          right:MediaQuery.of(context).size.width* 0.001,
                          left:  MediaQuery.of(context).size.width* 0.001,),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(AppStrings.km,
                                  style: h2TextFieldText13.copyWith(
                                    fontSize: 7,fontWeight: FontWeight.w700,
                                  ),),
                                SizedBox(width:MediaQuery.of(context).size.width* 0.015),
                                Container(
                                  height: 0.7,
                                  width: getProportionateScreenWidth(375)-330,
                                  color: AppColors.km, // Adjust the color of the line as needed
                                ),
                              ],
                            ),
                            Text(AppStrings.redRiver,
                              softWrap: true ,style: h2TextFieldText13.copyWith
                                (fontWeight: FontWeight.w500,fontSize: 19,color: AppColors.river
                              ),),
                            Row(
                              children: [
                                SvgPicture.asset(SvgAssets.loc),
                                Text(AppStrings.ind,
                                  style: h2TextFieldText13.copyWith(color: AppColors.primaryColor2,
                                      fontSize: 10,fontWeight: FontWeight.w500),),
                              ],
                            ),
                            SizedBox(height: getProportionateScreenHeight(10)),
                            InkWell(onTap: (){},
                              child: Container(
                                width: getProportionateScreenWidth(375)-280,
                                height: MediaQuery.of(context).size.height* 0.045,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      AppColors.primaryColor2,
                                      AppColors.two
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(AppStrings.view,
                                    style: h2TextFieldText13.copyWith(
                                        color: AppColors.white, fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),
                                    textAlign: TextAlign.center,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Text(AppStrings.details,
                    style: h2TextFieldText13.copyWith(
                        color: AppColors.bluee,
                        fontSize: 14
                    ),),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Expanded(
                    child: Text(
                      AppStrings.content,style:h2TextFieldText13.copyWith(
                        color: AppColors.another, fontSize: 11,fontWeight: FontWeight.w500
                    ) ,),
                  ),
                ],
              ),
            ),
          ),
        ),

      ]
  ); }
  Widget storybar() {
    return ListView.builder(
      clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          String imageAsset = images[index % images.length];
          return Column(
            children: [
              MyCircularImage(imageAsset: imageAsset),
              Text(headings[index],
                style:h316Blue.copyWith(fontWeight: FontWeight.w400,
                  color: AppColors.title1, fontSize: 12,)
              ),
            ],
          );
        }
    );
  }
}



