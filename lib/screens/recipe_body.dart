import 'package:flutter/material.dart';
import 'package:foodboard_application/utils/colors.dart';
import 'package:foodboard_application/widgets/app_column.dart';
import 'package:foodboard_application/widgets/app_icon.dart';
import 'package:foodboard_application/widgets/big_text.dart';
import 'package:foodboard_application/widgets/directions_bullet.dart';
import 'package:foodboard_application/widgets/directions_list.dart';
import 'package:foodboard_application/widgets/ingredient_image.dart';
import 'package:foodboard_application/widgets/ingredient_list.dart';

class RecipeBody extends StatefulWidget {
  const RecipeBody({Key? key}) : super(key: key);

  @override
  State<RecipeBody> createState() => _RecipeBodyState();
}

class _RecipeBodyState extends State<RecipeBody> {
  bool flag = true;
  bool directionFlag = true;

  List ingredientList = [
    [
      "https://api.time.com/wp-content/uploads/2019/01/gettyimages-914246230.jpg",
      "Eggs",
      "6 pc"
    ],
    [
      "https://m.media-amazon.com/images/I/61v1htfxh2L._SL1280_.jpg",
      "Basmati Rice",
      "2 cups"
    ],
    [
      "https://5.imimg.com/data5/BC/WJ/MY-2621199/biryani-masala-500x500.jpg",
      "Biryani Masala",
      ""
    ],
    [
      "https://media.istockphoto.com/photos/red-onion-portion-on-white-picture-id184275334?k=20&m=184275334&s=612x612&w=0&h=12YIF1mGqdRHmvz4f7JlyisuozPhJWv9PlwPdhQGZe8=",
      "Sliced Onion",
      "1 pc"
    ],
    [
      "https://www.jiomart.com/images/product/original/590003533/green-chilli-200-g-product-images-o590003533-p590003533-0-202203150435.jpg",
      "Green chillies",
      "10 pc"
    ],
    [
      "https://cdn.shopify.com/s/files/1/0489/5028/0356/products/indian_bayleaf_tejpatta_i_1920.jpg?v=1603632978&width=1946",
      "Bay Leaf",
      "10 pc"
    ],
    [
      "https://www.gardeningknowhow.com/wp-content/uploads/2017/09/cloves.jpg",
      "Cloves",
      "4 pc"
    ]
  ];

  List directionsList = [
    "Boil and shell four of the six eggs.",
    "Heat oil in a large dish and add the whole spices.",
    "After a few seconds add the onion and green chillies along with the ginger garlic paste. Fry till they turn light brown.",
    "Now break the two eggs into the pan and scramble.",
    "Add the drained rice to it and fry for a minute.",
    "Season with salt.",
    "Now put the boiled eggs into it and pour four cups of water.",
    "Cover and cook till the rice is half done.",
    "Sitr in the pulao masala and a little bit of lemon juice and mix gently.",
    "Cover and cook till all the water evaporates and the rice is done.",
    "Garnish with coriander and serve hot.",
  ];

  int count = 4;

  int stepCount = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://thumbs.dreamstime.com/b/egg-biryani-anda-biryani-indian-anda-rice-basmati-rice-cooked-masala-roasted-eggs-spices-served-yogurt-201739146.jpg"),
              )),
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcon(icon: Icons.arrow_back_ios),
                const AppIcon(
                  icon: Icons.favorite,
                  iconSize: 20,
                  iconColor: AppColors.lightGreyColor,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 250,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: const BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    AppColumn(text: "Egg Biryani"),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(
                                text: "Ingredients",
                                color: AppColors.textColor,
                              ),
                              BigText(
                                text: "7 Items",
                                color: AppColors.lightGreyColor,
                                size: 18,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          for (int i = 0; i < count; i++)
                            IngredientList(
                                imageUrl: ingredientList[i][0],
                                ingredientName: ingredientList[i][1],
                                ingredientCount: ingredientList[i][2]),
                          InkWell(
                            child: Row(
                              children: [
                                Text(
                                  flag ? "show more" : "show less",
                                  style: const TextStyle(
                                      color: AppColors.mainColor),
                                ),
                                Icon(
                                  flag
                                      ? Icons.arrow_drop_down
                                      : Icons.arrow_drop_up,
                                  color: AppColors.mainColor,
                                ),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                flag = !flag;
                                count = flag ? 4 : ingredientList.length;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 5, 12, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              BigText(
                                text: "Directions",
                                color: AppColors.textColor,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              for (int i = 0; i < stepCount; i++)
                                DirectionsList(
                                    step: directionsList[i],
                                    stepCount: (i + 1).toString())
                            ],
                          ),
                          InkWell(
                            child: Row(
                              children: [
                                Text(
                                  flag ? "show more" : "show less",
                                  style: const TextStyle(
                                      color: AppColors.mainColor),
                                ),
                                Icon(
                                  flag
                                      ? Icons.arrow_drop_down
                                      : Icons.arrow_drop_up,
                                  color: AppColors.mainColor,
                                ),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                directionFlag = !directionFlag;
                                stepCount =
                                    directionFlag ? 4 : directionsList.length;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
