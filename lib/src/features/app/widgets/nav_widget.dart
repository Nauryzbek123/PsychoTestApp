import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:psycho_test_app/src/core/widgets/row_spacer.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/resources/nunito_text.dart';

class NavButton extends StatelessWidget {
  final String label;
  final String svg;
  final bool isSelected;
  final VoidCallback onTap;

  const NavButton({
    required this.label,
    required this.svg,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            height: 30,
            decoration: BoxDecoration(
              color:
                  isSelected ? AppColors.mandarineColor : AppColors.greyLight,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                RowSpacer(1),
                SvgPicture.asset(
                  svg,
                  color: isSelected
                      ? AppColors.whiteColor
                      : AppColors.greySilverColor,
                ),
               RowSpacer(1),
                NunitoText(
                    label,
                    12,
                    isSelected
                        ? AppColors.whiteColor
                        : AppColors.greySilverColor,
                    FontWeight.w500)
              ],
            )),
      ),
    );
  }
}
