import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imgPath;
  final String bakeryName;

  const DonutTile(
      {Key? key,
      required this.donutFlavor,
      required this.donutPrice,
      this.donutColor,
      required this.imgPath,
      required this.bakeryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        color: donutColor[800], fontWeight: FontWeight.bold),
                  )),
            ]),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
              child: Image.asset(imgPath),
            ),
            Text(donutFlavor,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(bakeryName, style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  const Icon(Icons.add),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
