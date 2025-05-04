import 'package:flutter/material.dart';

class Newpages extends StatefulWidget {
  const Newpages({super.key});

  @override
  State<Newpages> createState() => _NewpagesState();
}

class _NewpagesState extends State<Newpages> {
  final PageController pageController = PageController();
  int currentpage = 0;
  int answer = 0;

  List<Map<String, dynamic>> pages = [
    {
      "color": Colors.amber,
      "text": "OOP nima? U qanday asosiy tamoyillarga ega?",
      "answer1": "Delegation",
      "answer2": "Recursion",
      "answer3": "Inheritance",
      "answer4": "Compilation",
    },
    {
      "color": Colors.blue,
      "text": "Dart tilida final va const farqi nimada?",
      "answer1": "final faqat UI’da ishlatiladi",
      "answer2": "const faqat class ichida ishlatiladi",
      "answer3": "final runtime’da belgilanadi, const compile-time’da ",
      "answer4": "Ikkalasi ham bir xil",
    },
    {
      "color": Colors.red,
      "text":
          "Algoritm nima va uni baholash uchun ishlatiladigan 'Big O notation' tushunchasini tushuntiring.",
      "answer1": "Kutilgan daromadni hisoblash uchun",
      "answer2": "Dasturdagi xatoliklarni topish uchun",
      "answer3": "Algoritm tezligini baholash uchun",
      "answer4": "Ekran o‘lchamini moslashtirish uchun",
    },
    {
      "color": Colors.green,
      "text": "Stack va Queue ma’lumot tuzilmagreenlarining farqi nimada?",
      "answer1": "First In First Out (FIFO)",
      "answer2": "Middle In First Out (MIFO)",
      "answer3": "Last In First Out (LIFO) ",
      "answer4": "Random Access",
    },
    {
      "color": Colors.purple,
      "text":
          "Flutter’da StatelessWidget va StatefulWidget o‘rtasidagi farq nima?",
      "answer1": "O‘zgaruvchi holatga ega widget",
      "answer2": "Interaktiv animatsiyalar",
      "answer3": "O‘zgaruvchan bo‘lmagan, holatsiz widget",
      "answer4": "Ekrandagi State management",
    },
    {
      "color": Colors.orange,
      "text": "Rekursiya nima? Oddiy rekursiv funksiyaga misol keltiring.",
      "answer1": "while() loop",
      "answer2": "for() loop",
      "answer3": "Funksiya o‘zini ichida chaqirsa",
      "answer4": "switch-case operatori",
    },
    {
      "color": Colors.indigoAccent,
      "text": "List va Set orasidagi farqni tushuntiring (Dart tilida).",
      "answer1": "Set elementlarni tartib bilan saqlaydi",
      "answer2": "List faqat raqamlar uchun ishlatiladi",
      "answer3":
          "Set unikal qiymatlarni saqlaydi, List takroriylarini ham saqlaydi",
      "answer4": "List faqat const bo'lishi kerak",
    },
    {
      "color": Colors.brown,
      "text":
          "Binary Search qanday ishlaydi va u qanday shartlarda ishlatiladi?",
      "answer1": "Har qanday ro‘yxat ustida",
      "answer2": "Faqat matnli fayllarda",
      "answer3": "Saralangan (sorted) ro‘yxatda",
      "answer4": "Raqamlar juft bo‘lsa",
    },
    {
      "color": Colors.grey,
      "text": "Dart tilida async/await nimani anglatadi va nima uchun kerak?",
      "answer1": "Kodni tezroq ishlatish uchun",
      "answer2": "Sinov (test) yozishda",
      "answer3": "Asinxron (non-blocking) operatsiyalarni boshqarish uchun ",
      "answer4": "Widgetlarni animatsiya qilish uchun",
    },
    {
      "color": Colors.yellow,
      "text":
          "Git nima va nima uchun versiya nazorati (version control) zarur?",
      "answer1": "Tizim xavfsizligini oshiruvchi ilova",
      "answer2": "Boshqaruv paneli",
      "answer3": "Versiya nazorati tizimi",
      "answer4": " Ma’lumotlar bazasi",
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: pages.length,
              controller: pageController,
              onPageChanged: (int page) {
                setState(() {
                  currentpage = page;
                });
              },
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: Duration(seconds: 4),
                  color: pages[index]["color"],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        pages[index]["text"],
                        style: TextStyle(color: Colors.black, fontSize: 40),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.green,
                        ),
                        onPressed: () {
                          answer--;
                        },
                        child: Text(
                          pages[index]["answer1"],
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.green,
                        ),
                        onPressed: () {
                          answer--;
                        },
                        child: Text(
                          pages[index]["answer2"],
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          answer++;
                        },
                        child: Text(
                          pages[index]["answer3"],
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.green,
                        ),
                        onPressed: () {
                          answer--;
                        },
                        child: Text(
                          pages[index]["answer4"],
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(pages.length, (index) {
              return AnimatedContainer(
                duration: Duration(seconds: 1),
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 10,
                width: currentpage == index ? 20 : 10,
                decoration: BoxDecoration(
                  color: currentpage == index ? Colors.blue : Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            }),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (currentpage > 0) {
                    pageController.previousPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInCirc,
                    );
                  }
                },
                child: Text("Ortga qaytish"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  if (currentpage < pages.length) {
                    pageController.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInCubic,
                    );
                  }
                },
                child: Text("Keyingi sahifa"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Javoblar"),
                        content: Text("Soni: $answer"),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                answer = 0;
                                currentpage = 0;
                                Navigator.pop(context);
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
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
