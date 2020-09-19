import 'package:flutter/material.dart';
import 'package:travel_ui/component/sectionTitle.dart';
import 'package:travel_ui/constants.dart';
import 'package:travel_ui/model/User.dart';
import 'package:travel_ui/size_config.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SectionTitle(
            title: 'Top Travelers on Spark',
            press: () {},
          ),
          VerticalSpacing(of : 15),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(
                  kDefaultPadding),
            ),
            padding: EdgeInsets.all(getProportionateScreenWidth(24),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  kDefualtShadow
                ]
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  ...List.generate(topTravelers.length,
                        (index) => UserCard(
                        user: topTravelers[index]
                    ),
                  ),
                ]
            ),
          ),
        ]
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    @required this.user
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ClipOval(
            child: Image.asset(
              user.image,
              fit: BoxFit.cover,
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
            ),
          ),
          VerticalSpacing(of: 10),
          Text(user.name,
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600
            ),
          ),
        ]
    );
  }
}


