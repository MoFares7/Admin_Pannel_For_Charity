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
            child: Column(
              children: [
                DrawerHeader(child: Image.asset("assets\image\logo.png")),
                ListTile(
                  onTap: () {},
                  horizontalTitleGap: 0.0,
                  leading: SvgPicture.asset(
                    "assets\icon\home.svg",
                    color: Colors.white54,
                    height: 16,
                  ),
                  title: Text("Home"),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              ))
        ]),
      ),
    );
  }
}
