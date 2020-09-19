import 'package:flutter/material.dart';
import 'package:travel_ui/component/placeCard.dart';
import 'package:travel_ui/component/sectionTitle.dart';
import 'package:travel_ui/model/TravelSpot.dart';
import 'package:travel_ui/size_config.dart';

class PoPularPlaces extends StatelessWidget {
  const PoPularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Right Now At Spark",
          press: () {},
        ),
        VerticalSpacing(of : 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(travelSpots.length, (i) =>
           Padding(
             padding: EdgeInsets.only(
                 left: getProportionateScreenWidth(20)
             ),
             child: PlaceCard(
               travelSpot: travelSpots[i],
               press: () {},
    ),
           ),
    ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ]
          ),
        ),
      ]
    );
  }
}






