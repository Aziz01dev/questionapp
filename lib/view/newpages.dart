import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questionapp/controller/question_controller.dart';

class Newpages extends StatefulWidget {
  const Newpages({super.key});

  @override
  State<Newpages> createState() => _NewpagesState();
}

class _NewpagesState extends State<Newpages> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<QuestionController>(); // <-- avval bu
    final questions = controller.allQuestions; // <-- keyin bu

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: questions.length,
                controller: pageController,
                onPageChanged: (int page) {
                  setState(() {
                    controller.currentpage = page;
                  });
                },
                itemBuilder: (context, index) {
                  final questionindex = questions[index];
                  return AnimatedContainer(
                    duration: Duration(seconds: 1),
                    color: questionindex.color,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            questionindex.text,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          ...[
                            questionindex.answer1,
                            questionindex.answer2,
                            questionindex.answer3,
                            questionindex.answer4,
                          ].map((answer) {
                            final isCorrect = answer == questionindex.answer3;
                            return Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    controller.updateScore(isCorrect);
                                  });
                                },
                                child: Text(
                                  answer,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.previousPage();
                      pageController.previousPage(
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInBack,
                      );
                    });
                  },
                  child: Text("Ortga qaytish"),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.nextPage();
                      pageController.nextPage(
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInBack,
                      );
                    });
                  },
                  child: Text("Keyingi sahifa"),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: Text("Javoblar"),
                          content: Text("Soni: ${controller.answer}"),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  controller.reset();
                                  Navigator.pop(context);
                                  pageController.jumpTo(0);
                                });
                              },
                              child: Text("Qayta boshlash"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Davom ettirish"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("answer"),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
