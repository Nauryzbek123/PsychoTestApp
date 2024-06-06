import 'package:flutter/material.dart';
import 'package:psycho_test_app/src/core/resources/app_colors.dart';

class CustomStyledTextField extends StatelessWidget {
  const CustomStyledTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: AppColors.whiteColor, 
        boxShadow: [
          BoxShadow(
            color: Color(0xFFB6A1C0).withOpacity(0.11),
            offset: Offset(2, 4),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}
