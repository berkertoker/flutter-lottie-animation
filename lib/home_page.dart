import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie_animation/payment_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});
  @override
  State<Welcome> createState() => _WelcomeState();
}
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:8.0.w,vertical: 8.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [           
              Text("is Payment Successful",
                style: TextStyle(
                  fontSize: 30.sp
                ),
              ),
              SizedBox(height: 50.h,),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Payment()),
                  );
                },
                child: Text("Yes",style: TextStyle(color: Colors.green, fontSize: 20.sp),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}