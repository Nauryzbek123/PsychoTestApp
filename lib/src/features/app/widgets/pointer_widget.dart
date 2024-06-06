import 'package:flutter/material.dart';
import 'package:psycho_test_app/src/core/resources/app_colors.dart';
import 'package:psycho_test_app/src/core/widgets/column_spacer.dart';

import '../../../core/resources/nunito_text.dart';
import '../../../core/widgets/drawable_line.dart';

class PointerWidget extends StatelessWidget {
  final String leftText;
  final String rightText; 
  const PointerWidget({super.key,required this.leftText,required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFB6A1C0)
                .withOpacity(0.11), // Adjust opacity for accuracy
            offset: Offset(2, 4), // 2px to the right and 4px down
            blurRadius: 10, // Blur radius of 10px
            spreadRadius: 0, // Spread radius of 0px
          ),
        ],
      ),
      child: Column(
        children: [
          ColumnSpacer(1.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SmallLine(),
              SmallLine(),
              SmallLine(),
              SmallLine(),
              SmallLine(),
              SmallLine(),
            ],
          ),
          Container(
            width: 317,
            height: 28,
            child: DrawableLineWithCircle(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: NunitoText(
                    leftText, 11, AppColors.silverBold, FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: NunitoText(
                    rightText, 11, AppColors.silverBold, FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget SmallLine() {
  return Container(
    width: 2,
    height: 8,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25), color: AppColors.greyBold),
  );
}
