import 'package:flutter/material.dart';
import 'package:foodboard_application/utils/colors.dart';
import 'package:foodboard_application/widgets/big_text.dart';
import 'package:foodboard_application/widgets/ingredient_image.dart';

class IngredientList extends StatelessWidget {
  final String imageUrl;
  final String ingredientName;
  final String ingredientCount;
  const IngredientList(
      {Key? key,
      required this.imageUrl,
      required this.ingredientName,
      required this.ingredientCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IngredientImage(imageUrl: imageUrl),
            SizedBox(
              width: 30,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: BigText(
                    text: ingredientName,
                    color: AppColors.textColor,
                    size: 18,
                  ),
                ),
              ],
            ),
            Spacer(),
            BigText(
              text: ingredientCount,
              color: AppColors.lightGreyColor,
              size: 18,
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
