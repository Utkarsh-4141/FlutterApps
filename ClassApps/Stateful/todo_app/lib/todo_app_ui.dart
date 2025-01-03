import "package:flutter/material.dart";

class ToDoAppUI extends StatefulWidget {
  const ToDoAppUI({super.key});

  @override
  State createState() => _ToDoAppUIState();
}

class _ToDoAppUIState extends State {
  List<Color> cardsColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  void showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return const Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Create Task",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Title",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color.fromRGBO(0, 139, 148, 1),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(width: 0.5),
                  ),
                  fillColor: Color.fromRGBO(0, 139, 148, 1),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 15, bottom: 15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: cardsColor[index % cardsColor.length],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Image.asset("assets/img.png"),
                        ),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Lorem Ipsum is simply setting industry",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color.fromRGBO(84, 84, 84, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        Text(
                          "10 July 2023",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromRGBO(132, 132, 132, 1),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit_outlined,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.delete_outline,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet();
        },
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        child: const Icon(
          size: 50,
          Icons.add,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}
