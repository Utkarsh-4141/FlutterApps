import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDYtxf5bxLyENXHeA6aD_PXxh7s_xHvMds",
        appId: "1:1018160145998:android:8b8c94bcaf74cb90e6851f",
        messagingSenderId: "1018160145998",
        projectId: "employeeinfo-e832a"),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayerInfo(),
    );
  }
}

class PlayerInfo extends StatefulWidget {
  const PlayerInfo({super.key});

  @override
  State<PlayerInfo> createState() => _PlayerInfoState();
}

class _PlayerInfoState extends State<PlayerInfo> {
  dynamic name;
  dynamic payment;
  dynamic work;
  bool flag = false;

  TextEditingController empNameTextController = TextEditingController();
  TextEditingController empSalTextController = TextEditingController();
  TextEditingController devTypeTextController = TextEditingController();

  void eraseControllers() {
    empNameTextController.clear();
    empSalTextController.clear();
    devTypeTextController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Employee Demo",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: empNameTextController,
              decoration: const InputDecoration(
                hintText: "Enter Employee Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: empSalTextController,
              decoration: const InputDecoration(
                hintText: "Enter Employee Salary",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: devTypeTextController,
              decoration: const InputDecoration(
                hintText: "Enter Employee Dev Type",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Add Data",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  ///ADD DATA
                  Map<String, dynamic> data = {
                    "empName": empNameTextController.text,
                    "empSal": empSalTextController.text,
                    "devType": devTypeTextController.text,
                  };
                  FirebaseFirestore.instance
                      .collection("EmployeeData")
                      .add(data);
                  eraseControllers();
                }),
            const SizedBox(height: 20),
            GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Get Data",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () async {
                  ///GET DATA
                  QuerySnapshot response = await FirebaseFirestore.instance
                      .collection("EmployeeData")
                      .get();

                  dynamic temp = 0;
                  for (dynamic val in response.docs) {
                    // log("Name : ${val.data()["empName"]}");
                    // log("Salary : ${val.data()["empSal"]}");
                    // log("Work : ${val.data()["devType"]}");
                    dynamic money =
                        double.tryParse(val.data()["empSal"]) ?? 0.0;
                    if (money > temp) {
                      temp = money;
                    }
                  }

                  for (dynamic val in response.docs) {
                    if (temp == double.tryParse(val.data()["empSal"])) {
                      name = val.data()["empName"];
                      payment = val.data()["empSal"];
                      work = val.data()["devType"];
                    }
                  }

                  setState(() {
                    flag = true;
                  });
                }),
            const SizedBox(height: 30),
            if (flag == true)
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Employee Name : $name",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Employee Salary : $payment",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Employee Type : $work",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
