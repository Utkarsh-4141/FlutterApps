import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  TextEditingController nameController = TextEditingController();
  
  List<String> playersList = [];

  String? playerName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Players List",
            style:TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children:[
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child:TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize:26,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter player name",
                  hintStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val) {
                  print("Value : $val");
                },
                onEditingComplete: () {
                  print("Editing Completed");
                },
                onSubmitted: (value) {
                  print("Value Submitted : $value");
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Add Data");
                playerName = nameController.text.trim();
                print("Player Name : $playerName");
                if(playerName != "") {
                  playersList.add(playerName!);
                  print("PlayersList Length : $playersList.length");
                  nameController.clear();
                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple,
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: playersList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context , index) {
                  return Text(
                    "Player Name : ${playersList[index]}",
                    style: const TextStyle(
                      fontSize: 26,
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}