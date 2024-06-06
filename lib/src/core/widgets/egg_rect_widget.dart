import 'package:flutter/material.dart';
import 'package:psycho_test_app/src/core/resources/app_colors.dart';

import '../resources/nunito_text.dart';

class EggWidget extends StatelessWidget {
  final String text;
  final String img;
  final bool isSelected;
  final VoidCallback onTap;
  const EggWidget(
      {super.key,
      required this.text,
      required this.img,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 83,
        height: 118,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(72),
          color: AppColors.whiteColor,
          border: Border.all( 
             color: isSelected ? AppColors.mandarineColor : Colors.transparent, 
             width: 2.0
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFB6A1C0).withOpacity(0.1),
              offset: Offset(2, 4),
              blurRadius: 10.8,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img),
              NunitoText(text, 11, AppColors.blackColor, FontWeight.w400)
            ],
          ),
        ),
      ),
    );
  }
}
