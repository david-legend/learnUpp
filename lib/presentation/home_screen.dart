import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:learnupp/values/values.dart';
import 'package:learnupp/widgets/background_widget.dart';
import 'package:learnupp/widgets/spaces.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          _buildHeader(),
        ],
      ),
    );
  }

  @widget
  Widget _buildHeader() {
    return Container(
      margin: const EdgeInsets.only(
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
                fallbackHeight: 50,
                fallbackWidth: 50,
              )
            ],
          ),
          SpaceH4(),
          Text(StringConst.WELCOME_MESSAGE),
          SpaceH8(),
        ],
      ),
    );
  }
}
