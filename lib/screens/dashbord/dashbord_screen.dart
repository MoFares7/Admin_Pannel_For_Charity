import 'package:admin_pannel_for_charity/contants.dart';
import 'package:admin_pannel_for_charity/screens/dashbord/components/header.dart';
import 'package:admin_pannel_for_charity/screens/dashbord/components/storage_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        height: 500,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Expanded(flex: 2, child: StarageDetails())
                ],
              )
            ],
          )),
    );
  }
}
