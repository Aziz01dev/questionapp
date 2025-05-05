import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:questionapp/controller/question_controller.dart';
import 'package:questionapp/view/newpages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => QuestionController(),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenUtilInit(
        splitScreenMode: true,
        minTextAdapt: true,
        designSize: Size(320, 800),
        child: Newpages(),
      ),
    );
  }
}
