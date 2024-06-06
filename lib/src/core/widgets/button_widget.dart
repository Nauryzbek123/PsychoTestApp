import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/nunito_text.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  Widget build(BuildContext context) {
    return Container(
      width: 335, 
      height: 44, 
      decoration:  BoxDecoration( 
        borderRadius: BorderRadius.circular(69), 
        color: AppColors.mandarineColor
      ),
      child: Center( 
        child: NunitoText(
                  'Сохранить', 20, AppColors.whiteColor, FontWeight.w400),
      ),
    );
  }
}
