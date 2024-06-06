import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:psycho_test_app/src/core/widgets/column_spacer.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/resources/nunito_text.dart';
import '../../../core/widgets/week_text.dart';
import '../../app/widgets/custom_calendar.dart';

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
                  child: GestureDetector(
                     onTap: () => context.router.pop(),
                    child: SvgPicture.asset('assets/svg/x.svg')),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: NunitoText('Сегодня', 18, AppColors.greySilverColor,
                      FontWeight.w600),
                ),
              ],
            ),
            ColumnSpacer(2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: WeekText(day: 'ПН'),
                ),
                WeekText(day: 'ВТ'),
                WeekText(day: 'СР'),
                WeekText(day: 'ЧТ'),
                WeekText(day: 'ПТ'),
                WeekText(day: 'СБ'),
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: WeekText(day: 'ВС'),
                ),
              ],
            ),
            CustomCalendar()
          ],
        ),
      ),
    );
  }
}
