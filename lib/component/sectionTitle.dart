import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';
import 'package:travel_ui/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    this.title,
    this.press
  });

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(kDefaultPadding),
          horizontal: getProportionateScreenWidth(kDefaultPadding)
      ),
      child: Row(
        children: [
          Text(title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: press,
            child: Text('See All'),
          ),
        ],
      ),
    );
  }
}