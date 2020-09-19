

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_ui/constants.dart';
import 'package:travel_ui/screen/eventScreen.dart';
import 'package:travel_ui/size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: 'assets/icons/calendar.svg',
                title: "Events",
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EventsScreen()
                  ),
                  );
                },
              ),
              NavItem(
                icon: 'assets/icons/chat.svg',
                title: "chat",
                isActive: true,
                press: () {},
              ),
              NavItem(
                icon: 'assets/icons/friendship.svg',
                title: "Friends",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    @required this.title,
    @required this.icon,
    @required this.press,
    this.isActive = false,
  });

  final String icon,title;
  final bool isActive;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if(isActive)
              kDefualtShadow],
            color: Colors.white
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 28,
              color: kTextColor,
            ),
            Spacer(),
            Text(title,
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
