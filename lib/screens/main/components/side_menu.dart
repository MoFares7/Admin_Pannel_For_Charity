import 'package:admin_pannel_for_charity/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets\image\logo.png")),
            DrawerListTitle(
              title: "Home",
              svgSrc: "assets\image\home.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "User",
              svgSrc: "assets\image\User.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "Camaign",
              svgSrc: "assets\image\camigan.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "Settings",
              svgSrc: "assets\image\settings.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
