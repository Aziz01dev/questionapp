import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:questionapp/view/newpages.dart';

void main() {
  runApp(MainApp());
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
