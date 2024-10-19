import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
      
 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container Demo",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              flag = (flag) ? false : true;
              setState(() {});
            },
            child: Container(
              height: 200,
              width: 200,
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: (flag) ? Colors.green : Colors.red,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
              ),
            ),
          ),
        ),
    );
  }
}