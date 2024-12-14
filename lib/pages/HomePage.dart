import 'package:flutter/material.dart';

import '../widgets/home_navbar.dart';
import '../widgets/items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.sort_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    "Hot & Fast Food",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    "Delievers on Time",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(),
                  labelColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 14),
                  tabs: [
                    Tab(
                      text: "Burger",
                    ),
                    Tab(
                      text: "Pizza",
                    ),
                    Tab(
                      text: "Cheese",
                    ),
                    Tab(
                      text: "Pasta",
                    ),
                  ],
                ),
                Flexible(
                    flex: 1,
                    child: TabBarView(children: [
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                    ]))
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
