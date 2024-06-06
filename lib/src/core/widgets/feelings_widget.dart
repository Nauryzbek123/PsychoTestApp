import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/nunito_text.dart';

class FeelingsWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const FeelingsWidget(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 21,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: isSelected ? AppColors.mandarineColor : AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFB6A1C0)
                  .withOpacity(0.11), // Adjust opacity for accuracy
              offset: Offset(2, 4),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
            child: NunitoText(text, 11,isSelected ? AppColors.whiteColor : AppColors.blackColor, FontWeight.w400)),
      ),
    );
  }
}
