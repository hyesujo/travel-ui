import 'package:flutter/material.dart';
import 'package:travel_ui/component/appBar.dart';
import 'package:travel_ui/component/customnavbar.dart';
import 'package:travel_ui/component/eventbady.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "New Events"
      ),
      body: EventBody(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
