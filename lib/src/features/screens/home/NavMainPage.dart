import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:psycho_test_app/src/core/resources/app_colors.dart';
import 'package:psycho_test_app/src/core/widgets/column_spacer.dart';
import 'package:psycho_test_app/src/features/app/pages/DiaryPage.dart';
import 'package:psycho_test_app/src/features/app/pages/StatisticsPage.dart';
import 'package:psycho_test_app/src/features/app/router/router.gr.dart';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/resources/nunito_text.dart';
import '../../app/widgets/nav_widget.dart';

class NavMainPage extends StatefulWidget {
  const NavMainPage({super.key});

  @override
  State<NavMainPage> createState() => _NavMainPageState();
}

class _NavMainPageState extends State<NavMainPage> {
  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    var formattedDate =
        DateFormat('d MMMM HH:mm', 'ru_RU').format(DateTime.now());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ColumnSpacer(6.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: NunitoText(formattedDate, 18,
                      AppColors.greySilverColor, FontWeight.w700),
                ),
                GestureDetector(
                    onTap: () =>
                        AutoRouter.of(context).push(const CalendarRoute()),
                    child: SvgPicture.asset('assets/svg/mySes.svg'))
              ],
            ),
            const ColumnSpacer(3),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Container(
                width: 328,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.greyLight,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    NavButton(
                      label: "Дневник настроения",
                      svg: 'assets/svg/diary.svg',
                      isSelected: selectedButtonIndex == 0,
                      onTap: () {
                        setState(() {
                          selectedButtonIndex = 0;
                        });
                      },
                    ),
                    NavButton(
                      label: "Статистика",
                      svg: 'assets/svg/stat.svg',
                      isSelected: selectedButtonIndex == 1,
                      onTap: () {
                        setState(() {
                          selectedButtonIndex = 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (selectedButtonIndex == 0) DiaryPage(),
            if (selectedButtonIndex == 1) StatisticsPage(),
          ],
        ),
      ),
    );
  }
}
