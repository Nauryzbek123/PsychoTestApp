import 'package:flutter/material.dart';
import 'package:psycho_test_app/src/core/resources/app_colors.dart';

class DrawableLineWithCircle extends StatefulWidget {
  @override
  _DrawableLineWithCircleState createState() => _DrawableLineWithCircleState();
}

class _DrawableLineWithCircleState extends State<DrawableLineWithCircle> {
  double progress = 0.02;

  void _updateProgress(double newProgress) {
    setState(() {
      progress = newProgress.clamp(0.0, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // Calculate the new progress based on the drag position
        double newProgress = (details.localPosition.dx / 317);
        _updateProgress(newProgress);
      },
      child: Container(
        width: 317,
        height: 28,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            // Grey background line
            Container(
              width: 317,
              height: 4,
              color: AppColors.greyBold,
            ),
            // Orange progress line
            Container(
              width: 317 * progress,
              height: 4,
              color: AppColors.mandarineColor,
            ),
            // Circle at the end of the orange progress line
            Positioned(
              left: 317 * progress -
                  7, // Adjust the circle position to be centered at the end
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container( 
                    width: 10, 
                    height: 10, 
                    decoration: BoxDecoration( 
                      color: AppColors.mandarineColor,
                    shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
