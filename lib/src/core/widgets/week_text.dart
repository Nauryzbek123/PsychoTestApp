import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/nunito_text.dart';

class WeekText extends StatelessWidget {
  final String day;
  const WeekText({super.key, required this.day});

  Widget build(BuildContext context) {
    return NunitoText(day, 12, AppColors.greySilverColor, FontWeight.w600);
  }
}
