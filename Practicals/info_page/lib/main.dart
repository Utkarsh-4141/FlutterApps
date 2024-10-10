import 'package:flutter/material.dart';

void main() {
  runApp(const InfoApp());
}

class InfoApp extends StatefulWidget {
  const InfoApp({super.key});

  @override
  State<InfoApp> createState() => _InfoAppState();
}

class _InfoAppState extends State<InfoApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cmpController = TextEditingController();

  List<Map> imp = [];

  void addData() {
    setState(() {
      imp.add(
        {
        "Name": nameController.text,
        "Company": cmpController.text,
        }
      );
      nameController.clear();
      cmpController.clear();
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Info App",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 28,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter your name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: cmpController,
                style: const TextStyle(
                  fontSize: 28,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter your dream company name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  addData();
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: imp.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Name : ${imp[index]["Name"]}",
                              style: const TextStyle(
                                fontSize: 24
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Company : ${imp[index]["Company"]}",
                              style: const TextStyle(
                                fontSize: 24
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

