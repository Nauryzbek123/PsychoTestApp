import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:psycho_test_app/src/core/resources/app_colors.dart';
import 'package:psycho_test_app/src/core/resources/static_data.dart';
import 'package:psycho_test_app/src/core/widgets/column_spacer.dart';

import '../../../core/resources/nunito_text.dart';
import '../../../core/widgets/button_widget.dart';
import '../../../core/widgets/egg_rect_widget.dart';
import '../../../core/widgets/feelings_widget.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/pointer_widget.dart';

class DiaryPage extends StatefulWidget {
  const DiaryPage({super.key});

  @override
  State<DiaryPage> createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  int selectedIndex = -1;
  int selectedFeelingsIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColumnSpacer(2),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: NunitoText(
                  'Что чувствуешь?', 16, AppColors.blackColor, FontWeight.w800),
            ),
          ),
          ColumnSpacer(2),
          SizedBox(
            height: 118,
            child: ListView.builder(
              itemCount: moodData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = moodData[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: EggWidget(
                    text: item['text']!,
                    img: item['img']!,
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          if (selectedIndex != -1)
            SizedBox(
              height: 158,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 8,
                  childAspectRatio: 5,
                ),
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                physics: NeverScrollableScrollPhysics(),
                itemCount: feelingsData.length,
                itemBuilder: (context, index) {
                  final item = feelingsData[index];
                  return FeelingsWidget(
                    text: item,
                    isSelected: index == selectedFeelingsIndex,
                    onTap: () {
                      setState(() {
                        selectedFeelingsIndex = index;
                      });
                    },
                  );
                },
              ),
            ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: NunitoText(
                  'Уровень стресса', 16, AppColors.blackColor, FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: PointerWidget(
              leftText: 'Низкий',
              rightText: 'Высокий',
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: NunitoText(
                  'Самооценка', 16, AppColors.blackColor, FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: PointerWidget(
              leftText: 'Неуверенность',
              rightText: 'Уверенность',
            ),
          ),
          const  Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: NunitoText(
                  'Заметки', 16, AppColors.blackColor, FontWeight.w800),
            ),
          ),
          ColumnSpacer(1.5),
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: CustomStyledTextField(),
          ), 
          ColumnSpacer(2),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ButtonWidget(),
          ), 
          ColumnSpacer(2),
        ],
      ),
    );
  }
}
