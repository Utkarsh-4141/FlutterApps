import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "To-do list",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),  
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 15,
            right: 15,
          ),
          child: ListView.builder(
            itemCount: 5,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context , int index) {
              return Container(
                padding: const EdgeInsets.all(15),
                //height: 150,
                //width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO( 250, 232, 232 , 1),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255 , 1),
                            boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.07))],
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/img_icon.png",
                              color: const Color.fromRGBO(199, 199, 199, 1),
                              height: 36,
                              width: 43,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Lorem Ipsum is simply setting industry",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Color.fromRGBO(0, 0, 0 , 1),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color.fromRGBO(84, 84, 84 , 1),
                                ),    
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ), 
      ),
    );
  }
}