import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(111, 81, 255, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  Text(
                    "Utkarsh",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color.fromRGBO(217, 217, 217, 1),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "CREATE TO DO LIST",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 15, right: 15, bottom: 15),
                                child: Slidable(
                                  endActionPane: ActionPane(
                                    motion: const ScrollMotion(),
                                    children: [
                                      const SizedBox(width: 20),
                                      Column(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  89, 57, 241, 1),
                                            ),
                                            child: const Icon(
                                              Icons.edit_outlined,
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  89, 57, 241, 1),
                                            ),
                                            child: const Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                              ),
                                              child: Image.asset(
                                                "assets/image.png",
                                                height: 60,
                                                width: 60,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                            ),
                                            const SizedBox(width: 15),
                                            const Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Lorem Ipsum is simply setting industry",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                    ),
                                                  ),
                                                  SizedBox(height: 15),
                                                  Text(
                                                    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          84, 84, 84, 1),
                                                    ),
                                                  ),
                                                  SizedBox(height: 15),
                                                  Text(
                                                    "10 July 2023",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          132, 132, 132, 1),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        const Row(
                                          children: [],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
