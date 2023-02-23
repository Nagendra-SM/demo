import 'package:flutter/material.dart';
import 'package:foodboard_application/widgets/big_text.dart';
import 'package:foodboard_application/widgets/directions_bullet.dart';

class DirectionsList extends StatelessWidget {
  final String step;
  final String stepCount;
  const DirectionsList({Key? key, required this.step, required this.stepCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DirectionsBullet(number: stepCount),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 280,
              child: BigText(
                text: step,
                size: 16,
                maxLines: 4,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
