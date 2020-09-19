import 'package:flutter/material.dart';
import 'package:travel_ui/component/homeHeader.dart';
import 'package:travel_ui/component/popularplace.dart';
import 'package:travel_ui/component/toptravelers.dart';
import 'package:travel_ui/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
         PoPularPlaces(),
          VerticalSpacing(),
          TopTravelers(),
          VerticalSpacing(),
      ]
    )
    );
  }
}



