import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie_animation/home_page.dart';

import 'package:flutter/material.dart';
import 'package:lottie_animation/main_page.dart';

void main() {
  runApp(MyAppp());
} 
class MyAppp extends StatelessWidget{

  @override
  Widget build(BuildContext context){    
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,        
        ),
        home: Welcome(),
        debugShowCheckedModeBanner: false,
      ),
    designSize: const Size(393, 808),  
    );
    
  }
}