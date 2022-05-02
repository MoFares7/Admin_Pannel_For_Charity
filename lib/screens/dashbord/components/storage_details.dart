import 'package:admin_pannel_for_charity/screens/dashbord/components/storage_info_cadr.dart';
import 'package:flutter/material.dart';

import '../../../contants.dart';
import 'chart.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            " Details Charity",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Number Employess",
            amountOfFiles: "",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Number Camigan",
            amountOfFiles: "",
            numOfFiles: 541,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Number Sponser",
            amountOfFiles: "",
            numOfFiles: 29,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            amountOfFiles: "",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
