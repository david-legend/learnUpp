import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnupp/values/values.dart';
import 'package:learnupp/widgets/spaces.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({
    this.width = 80,
    this.height = 80,
    this.backgroundColor = AppColors.pink,
    this.category = StringConst.ART,
    this.icon = ImagePath.COMPUTER_LOGO,
    this.categoryTextStyle,
  });

  final double width;
  final double height;
  final String category;
  final TextStyle categoryTextStyle;
  final String icon;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          padding: const EdgeInsets.all(Sizes.PADDING_16),
          color: backgroundColor,
          child: SvgPicture.asset(
            icon,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        SpaceH4(),
        Text(
          category,
          style: categoryTextStyle ?? theme.textTheme.bodyText1,
        ),
      ],
    );
  }
}
