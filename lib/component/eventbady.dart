import 'package:flutter/material.dart';
import 'package:travel_ui/component/placeCard.dart';
import 'package:travel_ui/constants.dart';
import 'package:travel_ui/model/TravelSpot.dart';
import 'package:travel_ui/size_config.dart';

class EventBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(35),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
               ...List.generate(travelSpots.length, (index)
               => PlaceCard(
                 travelSpot: travelSpots[index],
                 press: (){},
                 isFullCard: true,
               )
               ),
                Container(
                  height: getProportionateScreenWidth(350),
                    width: getProportionateScreenWidth(158),
                  decoration: BoxDecoration(
                    color: Color(0xff6A6c93).withOpacity(0.09),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: Color(0xffEBE8F6)
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getProportionateScreenWidth(53),
                        width: getProportionateScreenWidth(53),
                        child: FlatButton(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)
                          ),
                          color: kPrimaryColor,
                          onPressed: (){},
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: getProportionateScreenWidth(35),
                          ),
                        ),
                      ),
                      VerticalSpacing(of: 10),
                      Text("Add New Place",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
