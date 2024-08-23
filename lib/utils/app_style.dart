import 'dart:ui';

import 'package:valorant/utils/app_colors.dart';

abstract class AppStyle {
  static TextStyle tapBar = TextStyle(
      fontFamily: 'VALORANT',
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: AppColors.white);
  static TextStyle bigTitles = TextStyle(
      fontFamily: 'VALORANT',
      fontWeight: FontWeight.w400,
      fontSize: 36,
      color: AppColors.white);
  static TextStyle smallTitles = TextStyle(
      fontFamily: 'VALORANT',
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: AppColors.white);
  static TextStyle discription = TextStyle(
      fontFamily: 'VALORANT',
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: AppColors.white);
}
