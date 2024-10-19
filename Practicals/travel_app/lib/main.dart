import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Where do you want to travel?",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(233, 237, 248, 1),
                      ),
                      padding: const EdgeInsets.fromLTRB(64, 16, 64, 16),
                      child: const Row(
                        children: [
                          Text(
                            "Select Destination",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromRGBO(52, 111, 249, 1),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color.fromRGBO(52, 111, 249, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(52, 111, 249, 1),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Best Deals",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              const Row(
                children: [
                  Text(
                    "Sorted by lower price",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromRGBO(179, 182, 187, 1),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color.fromRGBO(52, 111, 249, 1),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 145,
                      width: 145,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: Color.fromRGBO(233, 237, 248, 1),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "El Cairo",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            "Egypt",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Color.fromRGBO(179, 182, 187, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
