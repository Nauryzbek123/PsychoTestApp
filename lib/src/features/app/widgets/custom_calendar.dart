import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:psycho_test_app/src/core/widgets/column_spacer.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/resources/nunito_text.dart';

class CustomCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int currentMonth = now.month;
    int currentYear = now.year;

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: PagedVerticalCalendar(
        startWeekWithSunday: true,
        initialDate: now, // Set initial date to now

        monthBuilder: (context, month, year) {
          if (year == currentYear && month < currentMonth - 1) {
            return SizedBox.shrink(); // Hide past months
          }

          return Column(
            children: [
              ColumnSpacer(2),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: NunitoText(DateFormat('yyyy').format(DateTime(year)),
                      16, AppColors.greySilverColor, FontWeight.w700),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: NunitoText(
                      DateFormat('MMMM', 'ru_RU').format(DateTime(year, month)),
                      24,
                      AppColors.blackColor,
                      FontWeight.w700),
                ),
              ),
            ],
          );
        },

        dayBuilder: (context, date) {
          final isCurrentDay = date.day == now.day &&
              date.month == now.month &&
              date.year == now.year;
          final CircleColor = isCurrentDay
              ? AppColors.mandarineColor.withOpacity(0.25)
              : Colors.transparent;

          return Column(
            children: [
              ColumnSpacer(1),
              Container(
                width: 38,
                height: 38, 
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CircleColor,
                ),
                child: Center(
                  child: Column(
                    children: [
                      NunitoText(DateFormat('d').format(date), 18,
                          AppColors.blackColor, FontWeight.w500),
                      if (isCurrentDay)
                        Container(
                          width: 5, 
                          height: 5.26, 
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.mandarineColor,
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
