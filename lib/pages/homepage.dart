import 'package:donut_app/tabs/burger_tab.dart';
import 'package:donut_app/tabs/smoothie_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/donut_tab.dart';
import '../tabs/pancake.dart';
import '../tabs/pizza_tab.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png'),
    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png'),
    //smothie tab
    const MyTab(iconPath: 'lib/icons/drink.png'),
    //pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Yummy Desserts',
              style: TextStyle(color: Colors.black)),
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.menu,
          //       size: 30,
          //       color: Colors.black,
          //     )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
          child: Column(
            children: [
              Row(children: const [
                Text('I want to ',
                    style: TextStyle(fontSize: 25, color: Colors.grey)),
                Text('EAT',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ]),
              const SizedBox(height: 18),

              //TabBar
              TabBar(tabs: myTabs),
              //TabBar view
              Expanded(
                  child: TabBarView(
                children: [
                  //donut Page
                  DonutTab(),
                  //burger Page
                  const BurgerTab(),
                  //Smoothie page
                  const SmoothieTab(),
                  //Pancake page
                  const PancakeTab(),
                  //Pizza page
                  const PizzaTab(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
