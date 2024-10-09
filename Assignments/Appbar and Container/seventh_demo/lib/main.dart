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
            "Container Demo",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 300,
                width: 150,
                child: Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg"),
              ),
              Container(
                height: 300,
                width: 150,
                child: Image.network("https://fps.cdnpk.net/images/home/subhome-ai.webp?w=649&h=649"),
              ),
              Container(
                height: 300,
                width: 150,
                child: Image.network("https://i0.wp.com/picjumbo.com/wp-content/uploads/amazing-stone-path-in-forest-free-image.jpg?w=600&quality=80"),
              ),
              Container(
                height: 300,
                width: 150,
                child: Image.network("https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"),
              ),
              Container(
                height: 300,
                width: 150,
                child: Image.network("https://images.unsplash.com/photo-1454023492550-5696f8ff10e1?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
