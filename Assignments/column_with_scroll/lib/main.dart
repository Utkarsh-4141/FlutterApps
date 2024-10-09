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
            "Column With Scroll",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://motownindia.com/images/Auto-Industry/LUXURY-CARS-IN-INDIA-A-Painful-Growth-Motown-India-Bureau-1-989.jpg"),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Image.network("https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/rolls_royce_phantom_top_10.jpg"),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Image.network("https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2024/05/A-2024-05-21T185632.262.jpg?fit=1366%2C768&ssl=1"),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
