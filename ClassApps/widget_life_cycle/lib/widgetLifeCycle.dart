import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:widget_life_cycle/screen2.dart';

class WidgetLifeCycle extends StatefulWidget {
  const WidgetLifeCycle({super.key});

  @override
  State<WidgetLifeCycle> createState() {
    log("In createState()");
    return _WidgetLifeCycleState();
  }
}

class _WidgetLifeCycleState extends State<WidgetLifeCycle> {
  String str = "C2W";
  @override
  Widget build(BuildContext context) {
    log("In WidgetLifeCycleState build()");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Screen2(text: str),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  str = (str == "C2W") ? "Core2web" : "C2W" ;
                });
              },
              child: const Text("Change Text"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) {
              return Screen2(text: str);
            }),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    log("In initState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("In didChangeDependencies()");
  }

  @override
  void deactivate() {
    super.deactivate();
    log("In deactivate()");
  }

  @override
  void dispose() {
    super.dispose();
    log("In dispose()");
  }

}
