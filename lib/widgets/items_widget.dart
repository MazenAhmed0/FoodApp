import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.78,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF232227),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 8)
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "singleItemPage");
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset("assets/images/$i.png",
                        height: 120, width: 120, fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Cheese Burger",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Hot Burger",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        CupertinoIcons.cart_badge_plus,
                        size: 27,
                        color: Colors.white,
                      )
                    ],
                  ),
                )

                // Text(
                //   "Cheese Burger",
                //   style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 20,
                //       fontWeight: FontWeight.w500),
                // ),
                // Text(
                //   "Hot Burger",
                //   style: TextStyle(color: Colors.white54, fontSize: 16),
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "\$55",
                //       style: TextStyle(color: Colors.white),
                //     ),
                //     Icon(
                //       Icons.add_shopping_cart_outlined,
                //       color: Colors.white,
                //     )
                //   ],
                // )
              ],
            ),
          )
      ],
    );
  }
}
