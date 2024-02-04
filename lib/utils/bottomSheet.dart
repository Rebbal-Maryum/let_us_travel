import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/assets.dart';
import '../config/colors.dart';
import '../config/size.dart';
import '../config/strings.dart';
import '../config/styles.dart';
class BottomSheet {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Positioned(
          top: MediaQuery
              .of(context)
              .size
              .height * 0.1,
          child: Container(
            height: 440,
            width: getProportionateScreenWidth(375.0),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.045,
                right: MediaQuery
                    .of(context)
                    .size
                    .width * 0.04,
                left: MediaQuery
                    .of(context)
                    .size
                    .width * 0.04,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 112,
                        height: 129,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageAssets.mumbai),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery
                              .of(context)
                              .size
                              .height * 0.01,
                          right: MediaQuery
                              .of(context)
                              .size
                              .width * 0.001,
                          left: MediaQuery
                              .of(context)
                              .size
                              .width * 0.001,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  AppStrings.km,
                                  style: h2TextFieldText13.copyWith(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.015),
                                Container(
                                  height: 0.7,
                                  width: getProportionateScreenWidth(375) - 330,
                                  color: AppColors.km,
                                ),
                              ],
                            ),
                            Text(
                              AppStrings.redRiver,
                              softWrap: true,
                              style: h2TextFieldText13.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                  color: AppColors.river),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(SvgAssets.loc),
                                Text(
                                  AppStrings.ind,
                                  style: h2TextFieldText13.copyWith(
                                      color: AppColors.primaryColor2,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: getProportionateScreenHeight(10)),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: getProportionateScreenWidth(375) - 280,
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.045,
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
                                  child: Text(
                                    AppStrings.view,
                                    style: h2TextFieldText13.copyWith(
                                        color: AppColors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Text(
                    AppStrings.details,
                    style: h2TextFieldText13.copyWith(
                        color: AppColors.bluee, fontSize: 14),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        AppStrings.content,
                        style: h2TextFieldText13.copyWith(
                            color: AppColors.another,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}