import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/single_item_navbar.dart';

class SingleItemPage extends StatelessWidget {
  const SingleItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232227),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      CupertinoIcons.cart_fill,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset("assets/images/bg.png",
                    height: MediaQuery.of(context).size.height / 1.7,
                    fit: BoxFit.cover),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Hot & Fresh Burger",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // count--;
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: () {
                                // count++;
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "We bring you the burger with cheese served with onion, cold drink and fries. We bring you the burger with cheese served with onion, cold drink and fries. We bring you the burger with cheese served with onion, cold drink and fries.",
                    style: TextStyle(color: Colors.white60, fontSize: 18),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SingleItemNavBar(),
    );
  }
}
