import 'package:admin_pannel_for_charity/contants.dart';
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
              Row(
                children: [
                  Text(
                    "Home",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Spacer(),
                  Expanded(child: SearchFiled()),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                        vertical: defaultPadding / 2),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/admin.jpg',
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding / 2),
                          child: Text('Mo Fares'),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}

class SearchFiled extends StatelessWidget {
  const SearchFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: secondaryColor,
          filled: true,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(defaultPadding * 0.75),
              margin: const EdgeInsets.all(defaultPadding / 2),
              decoration: const BoxDecoration(color: primaryColor),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
                height: 20,
                width: 15,
                color: Colors.black,
              ),
            ),
          )),
    );
  }
}
