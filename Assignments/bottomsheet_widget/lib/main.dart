import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            const Text(
              "BottomSheet Demo",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 26,
              ),
            ),
            Container(
              height: 200,
              color: Colors.amber,
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "BottomSheet Demo",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: const Center(
          child: Text("BottomSheet"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            openBottomSheet();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}