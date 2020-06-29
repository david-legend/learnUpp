import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:learnupp/values/values.dart';
import 'package:learnupp/widgets/background_widget.dart';
import 'package:learnupp/widgets/category_item.dart';
import 'package:learnupp/widgets/curved_background_widget.dart';
import 'package:learnupp/widgets/custom_text_field.dart';
import 'package:learnupp/widgets/spaces.dart';

import 'layout/adaptive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(Sizes.PADDING_0),
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              BackgroundWidget(),
              Column(
                children: [
                  _buildHeader(context),
                  CurvedBackground(
                    height: assignHeight(
                      context: context,
                      fraction: 0.75,
//                    subs: (heightOfBottomNavBar + safeAreaMargin),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    child: Container(
                      child: Column(
                        children: [
                          _buildCategoriesSection(Data.categories),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @widget
  Widget _buildCategoriesSection(List<CategoryItemData> categories) {
//    List<Widget> categoriesList = [];
//    for (var index = 0; index < categories.length; index++) {
//      categoriesList.add(
//        CategoryItem(
//          category: categories[index].category,
//          backgroundColor: categories[index].backgroundColor,
//          icon: categories[index].icon,
//        ),
//      );
//    }

    return Container(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (BuildContext context, int index) {
          return SpaceW8();
        },
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(
            category: categories[index].category,
            backgroundColor: categories[index].backgroundColor,
            icon: categories[index].icon,
          );
        },
      ),
    );
  }

  @widget
  Widget _buildHeader(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: assignHeight(
        context: context,
        fraction: 0.25,
      ),
      padding: const EdgeInsets.only(
        top: Sizes.SAFE_AREA_MARGIN + Sizes.MARGIN_16,
        left: Sizes.MARGIN_16,
        right: Sizes.MARGIN_16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: StringConst.GREET_USER,
                  children: [
                    TextSpan(text: StringConst.USER_NAME),
                  ],
                ),
              ),
              Placeholder(
                fallbackHeight: 30,
                fallbackWidth: 30,
              )
            ],
          ),
          SpaceH4(),
          Text(StringConst.WELCOME_MESSAGE),
          SpaceH12(),
          CustomTextField(
            hintText: StringConst.SEARCH_INPUT_HINT_TEXT,
            hintTextStyle: theme.textTheme.bodyText1.copyWith(
              color: AppColors.grey,
            ),
            textFormFieldStyle: theme.textTheme.bodyText1.copyWith(
              color: AppColors.primaryText,
            ),
            hasPrefixIcon: true,
            prefixIcon: Icons.search,
            prefixIconColor: AppColors.grey,
          )
        ],
      ),
    );
  }
}
