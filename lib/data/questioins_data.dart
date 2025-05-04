import 'package:flutter/material.dart';
import 'package:questionapp/model/question_model.dart';

List<Question> questions = [
  Question(
    color: Colors.amber,
    text: "OOP nima? U qanday asosiy tamoyillarga ega?",
    answer1: "Delegation",
    answer2: "Recursion",
    answer3: "Inheritance",
    answer4: "Compilation",
  ),
  Question(
    color: Colors.blue,
    text: "Dart tilida final va const farqi nimada?",
    answer1: "final faqat UI’da ishlatiladi",
    answer2: "const faqat class ichida ishlatiladi",
    answer3: "final runtime’da belgilanadi, const compile-time’da ",
    answer4: "Ikkalasi ham bir xil",
  ),
  Question(
    color: Colors.red,
    text:
        "Algoritm nima va uni baholash uchun ishlatiladigan 'Big O notation' tushunchasini tushuntiring.",
    answer1: "Kutilgan daromadni hisoblash uchun",
    answer2: "Dasturdagi xatoliklarni topish uchun",
    answer3: "Algoritm tezligini baholash uchun",
    answer4: "Ekran o‘lchamini moslashtirish uchun",
  ),
  Question(
    color: Colors.green,
    text: "Stack va Queue ma’lumot tuzilmagreenlarining farqi nimada?",
    answer1: "First In First Out (FIFO)",
    answer2: "Middle In First Out (MIFO)",
    answer3: "Last In First Out (LIFO) ",
    answer4: "Random Access",
  ),
  Question(
    color: Colors.purple,
    text: "Flutter’da StatelessWidget va StatefulWidget o‘rtasidagi farq nima?",
    answer1: "O‘zgaruvchi holatga ega widget",
    answer2: "Interaktiv animatsiyalar",
    answer3: "O‘zgaruvchan bo‘lmagan, holatsiz widget",
    answer4: "Ekrandagi State management",
  ),
  Question(
    color: Colors.orange,
    text: "Rekursiya nima? Oddiy rekursiv funksiyaga misol keltiring.",
    answer1: "while() loop",
    answer2: "for() loop",
    answer3: "Funksiya o‘zini ichida chaqirsa",
    answer4: "switch-case operatori",
  ),
  Question(
    color: Colors.indigoAccent,
    text: "List va Set orasidagi farqni tushuntiring (Dart tilida).",
    answer1: "Set elementlarni tartib bilan saqlaydi",
    answer2: "List faqat raqamlar uchun ishlatiladi",
    answer3:
        "Set unikal qiymatlarni saqlaydi, List takroriylarini ham saqlaydi",
    answer4: "List faqat const bo'lishi kerak",
  ),
  Question(
    color: Colors.brown,
    text: "Binary Search qanday ishlaydi va u qanday shartlarda ishlatiladi?",
    answer1: "Har qanday ro‘yxat ustida",
    answer2: "Faqat matnli fayllarda",
    answer3: "Saralangan (sorted) ro‘yxatda",
    answer4: "Raqamlar juft bo‘lsa",
  ),
  Question(
    color: Colors.grey,
    text: "Dart tilida async/await nimani anglatadi va nima uchun kerak?",
    answer1: "Kodni tezroq ishlatish uchun",
    answer2: "Sinov (test) yozishda",
    answer3: "Asinxron (non-blocking) operatsiyalarni boshqarish uchun ",
    answer4: "Widgetlarni animatsiya qilish uchun",
  ),
  Question(
    color: Colors.yellow,
    text: "Git nima va nima uchun versiya nazorati (version control) zarur?",
    answer1: "Tizim xavfsizligini oshiruvchi ilova",
    answer2: "Boshqaruv paneli",
    answer3: "Versiya nazorati tizimi",
    answer4: " Ma’lumotlar bazasi",
  ),
];
