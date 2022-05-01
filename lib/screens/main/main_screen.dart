import 'package:admin_pannel_for_charity/screens/dashbord/dashbord_screen.dart';
import 'package:admin_pannel_for_charity/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(children: [
          Expanded(
            child: SideMenu(),
          ),
          Expanded(
            flex: 5,
            child: DashboardScreen(),
          )
        ]),
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        press;
      },
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(title),
    );
  }
}
