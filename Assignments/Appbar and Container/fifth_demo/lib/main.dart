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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.network("https://www.bimmer-tech.net/media/image/fa/9d/e7fc76cf3d97d317bd3dd6d1df96.jpeg"),
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.network("https://carwow-uk-wp-2.imgix.net/Bentley-Continental-GT.jpg?auto=format&cs=tinysrgb&fit=crop&h=&ixlib=rb-1.1.0&q=60&w=1600"),
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.network("https://www.thedrive.com/wp-content/uploads/content-b/message-editor/1617634476610-p90413590_highres_the-koa-wood-phantom.jpg?strip=all&quality=85"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
