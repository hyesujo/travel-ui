import 'package:flutter/material.dart';
import 'package:travel_ui/component/appBar.dart';
import 'package:travel_ui/component/body.dart';
import 'package:travel_ui/component/customnavbar.dart';
import 'package:travel_ui/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

