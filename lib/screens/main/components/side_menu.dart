import 'package:admin_pannel_for_charity/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            DrawerHeader(child: Image.asset("assets/images/k.png")),
            DrawerListTitle(
              title: "Home",
              svgSrc: "assets/icons/home.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "User",
              svgSrc: "assets/icons/User.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "Camaign",
              svgSrc: "assets/icons/camigan.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "Settings",
              svgSrc: "assets/icons/settings.svg",
              press: () {},
            ),
          ],
        ),
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
        color: Color.fromARGB(137, 12, 7, 7),
        height: 16,
      ),
      title: Text(title),
    );
  }
}
