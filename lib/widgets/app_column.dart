import 'package:flutter/material.dart';
import 'package:foodboard_application/utils/colors.dart';
import 'package:foodboard_application/widgets/big_text.dart';
import 'package:foodboard_application/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  String text;
  AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: BigText(
              text: text,
              size: 24,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(7, 15, 7, 15),
            padding: EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.lightGreyColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "345",
                        color: AppColors.mainColor,
                      ),
                      SmallText(text: "Kcal")
                    ],
                  ),
                  Column(
                    children: [
                      BigText(
                        text: "250",
                        color: AppColors.mainColor,
                      ),
                      SmallText(text: "grams")
                    ],
                  ),
                  Column(
                    children: [
                      BigText(
                        text: "4.8",
                        color: AppColors.mainColor,
                      ),
                      SmallText(text: "Kcal")
                    ],
                  ),
                  Column(
                    children: [
                      BigText(
                        text: "60",
                        color: AppColors.mainColor,
                      ),
                      SmallText(text: "min")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
