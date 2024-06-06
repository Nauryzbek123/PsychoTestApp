import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:psycho_test_app/src/core/widgets/column_spacer.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/resources/nunito_text.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
          ColumnSpacer(7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SvgPicture.asset('assets/svg/x.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: NunitoText('Сегодня', 18, AppColors.greySilverColor, FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    ),
    );
  }
}
