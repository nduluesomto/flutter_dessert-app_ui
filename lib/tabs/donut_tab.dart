import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutOnSale = [
    // [donut flavor, price, color, image, bakerycompany];

    ["Ice Cream", "36", Colors.blue, "lib/images/donut_ice.png", 'Ansel'],
    ["Strawberry", "20", Colors.red, "lib/images/donut.png", 'Picarones'],
    ["Latte", "100", Colors.purple, "lib/images/donuts.png", 'Sonhos'],
    ["Chocolate", "69", Colors.brown, "lib/images/donut_choco.png", 'Churros'],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            imgPath: donutOnSale[index][3],
            donutColor: donutOnSale[index][2],
            bakeryName: donutOnSale[index][4],
          );
        });
  }
}
