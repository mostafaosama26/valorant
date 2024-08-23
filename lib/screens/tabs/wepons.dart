import 'package:flutter/material.dart';
import 'package:valorant/utils/app_colors.dart';
import 'package:valorant/utils/app_style.dart';

class WeaponsTab extends StatelessWidget {
  String name;
  String type;
  int index;
  WeaponsTab({super.key,required this.name,required this.type,required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * .2,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: buildWeaponsTab(context, index),
      ),
    );
  }

  buildWeaponFromRight(BuildContext context) =>
      Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height * .2,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .16,
                    color: AppColors.maastrichtBlue,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name,style: TextStyle(
                      fontFamily: 'VALORANT',
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                      color: AppColors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(type,style: TextStyle(
                      fontFamily: 'VALORANT',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.white)),
                ),
              ],
            ),
            Transform.rotate(
              angle: 20 * (3.1415927 / 180),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 16,top: 16),
                              child: Image.asset(
                                'assets/Weapons_Image/$name.png',
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .5,
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * .15,
                                fit: BoxFit.fill,),
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      );

  buildWeaponFromLift(BuildContext context) =>
      Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height * .2,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .16,
                    color: AppColors.maastrichtBlue,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(name,style: TextStyle(
                        fontFamily: 'VALORANT',
                        fontWeight: FontWeight.w400,
                        fontSize: 28,
                        color: AppColors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,right: 8),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(type,style: TextStyle(
                        fontFamily: 'VALORANT',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.white)),
                  ),
                ),
              ],
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(3.1415927),
              child: Transform.rotate(
                angle: 20 * (3.1415927 / 180),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Spacer(flex: 50,),
                          Padding(
                            padding: const EdgeInsets.only(right: 16,top: 16),
                            child: Image.asset(
                              'assets/Weapons_Image/$name.png',
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .5,
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * .15,
                              fit: BoxFit.fill,),
                          ),
                          Spacer(flex: 10,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  buildWeaponsTab(BuildContext context,int index) =>
      index % 2 == 0 ? buildWeaponFromRight(context) : buildWeaponFromLift(context);
}
