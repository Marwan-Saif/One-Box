import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primaryColor = Color(0xff1F5E3B);
  static const Color lightPrimaryColor = Color(0xFF2D9F5D);
  static const Color secondaryColor = Color(0xFFF4A91F);
  static const Color lightSecondaryColor = Color(0xFFF8C76D);
  static const Color gradiant1= Color(0xFFE6EBFE);
  static const Color gradiant2= Color(0xFFE1E7FC);
  static const Color gradiant3= Color(0xFF809FDC);
  static const Color gradiant4= Color(0xFF1750B9);

    static   LinearGradient gradient() {
    return LinearGradient(
      begin: AlignmentDirectional.centerEnd,
      end: AlignmentDirectional.centerStart,
      colors: [
        AppColors.gradiant1,
        AppColors.gradiant2,
        AppColors.gradiant3,
        AppColors.gradiant4,
      ],
    
    );
  }
}  
//   Shadow({
//   Color color =  const Color(0xFFE6EBFE),
//   Offset offset = Offset.zero,
//   double blurRadius = 0.0
// })