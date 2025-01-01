import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Reliance Industries?",
      "url" : "assets/images/reliance.jpg",
      "options": [
        "Gautam Adani",
        "Dhirubhai Ambani",
        "Ratan Tata",
        "Mukesh Ambani"
      ],
      "correctAnswer": 1
    },
    {
      "question": "Who is the founder of Tata Group?",
      "url" : "assets/images/tata.jpg",
      "options": [
        "Ratan Tata",
        "J.R.D Tata",
        "Jamshedji Tata",
        "Dhirubhai Ambani"
      ],
      "correctAnswer": 2
    },
    {
      "question": "Who is the founder of Adani Group?",
      "url" : "assets/images/adani.webp",
      "options": [
        "Mukesh Ambani",
        "Gautam Adani",
        "Deepinder Goyal",
        "Ratan Tata"
      ],
      "correctAnswer": 1
    },
    {
      "question": "Who is the founder of Zomato?",
      "url" : "assets/images/zomato.webp",
      "options": [
        "Deepinder Goyal",
        "Aman Gupta",
        "Anupam Mittal",
        "Ritesh Agarwal"
      ],
      "correctAnswer": 0
    },
    {
      "question": "Who is the founder of Infosys?",
      "url" : "assets/images/infosys.jpg",
      "options": [
        "Gautam Adani",
        "Ratan Tata",
        "Mukesh Ambani",
        "Narayana Murthy"
      ],
      "correctAnswer": 3
    }
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;
  bool isStartPage = true;
  bool isQuestionPage = true;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return toggleScreen();
  }

  Scaffold toggleScreen() {
    if (isStartPage == true) {
      return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/quiz app start page.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        isStartPage = false;
                        isQuestionPage = true;
                        setState(() {});
                      },
                      child: const Text(
                        "Start Test",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else if (isQuestionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),

                /// QUESTION NO
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Question : ${currentQuestionIndex + 1}/${allQuestions.length}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                /// QUESTION
                SizedBox(
                  child: Text(
                    "Q. ${allQuestions[currentQuestionIndex]["question"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.purple,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    "${allQuestions[currentQuestionIndex]["url"]}",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 20),

                /// OPTION 1
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(0),
                    ),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 0;
                        setState(() {});
                      }
                    },
                    child: Text(
                      "A. ${allQuestions[currentQuestionIndex]["options"][0]}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                /// OPTION 2
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(1),
                    ),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 1;
                        setState(() {});
                      }
                    },
                    child: Text(
                      "B. ${allQuestions[currentQuestionIndex]["options"][1]}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                /// OPTION 3
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(2),
                    ),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 2;
                        setState(() {});
                      }
                    },
                    child: Text(
                      "C. ${allQuestions[currentQuestionIndex]["options"][2]}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                /// OPTION 4
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(3),
                    ),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 3;
                        setState(() {});
                      }
                    },
                    child: Text(
                      "D. ${allQuestions[currentQuestionIndex]["options"][3]}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            if (selectedAnswerIndex ==
                allQuestions[currentQuestionIndex]["correctAnswer"]) {
              score++;
            }
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                isQuestionPage = false;
              }
            }
            selectedAnswerIndex = -1;
            setState(() {});
          },
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Congratulations!!",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Image.asset("assets/images/trophy_img.jpg"),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "You have successfully completed the test",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Score : $score/${allQuestions.length}",
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                ),
                onPressed: () {
                  currentQuestionIndex = 0;
                  selectedAnswerIndex = -1;
                  score = 0;
                  isStartPage = true;
                  setState(() {});
                },
                child: const Text(
                  "Retest",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
