import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

List<Color> colors = [
  const Color.fromRGBO(250, 232, 232, 1),
  const Color.fromRGBO(232, 237, 250, 1),
  const Color.fromRGBO(250, 249, 232, 1),
  const Color.fromRGBO(250, 232, 250, 1),
];

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "To-Do list",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            backgroundColor: const Color.fromRGBO(2, 167, 177, 1)),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(17)),
                        color: colors[index % colors.length],
                      ),
                      width: 400,
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 82,
                                height: 82,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.07))
                                    ]),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/Group 42.png",
                                    color:
                                        const Color.fromRGBO(199, 199, 199, 1),
                                    width: 43,
                                    height: 36,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(13, 0, 0, 0),
                                    width: 243,
                                    height: 30,
                                    child: const Text(
                                      "Lorem Ipsum is simply setting industry. ",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: "Quicksand",
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(13, 0, 0, 8),
                                    width: 243,
                                    height: 76,
                                    child: const Text(
                                      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                      style: TextStyle(
                                        fontFamily: "Quicksand",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(84, 84, 84, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(13, 10, 13, 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "10 July 2023",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(132, 132, 132, 1)),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.edit,
                                  size: 19,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  Icons.delete,
                                  size: 19,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}