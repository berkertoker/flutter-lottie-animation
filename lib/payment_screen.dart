import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_animation/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Payment extends StatefulWidget {
  const Payment({super.key});
  @override
  State<Payment> createState() => _PaymentState();
}
class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:8.0.w, vertical: 8.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Row(
                children: [
                   Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ) , 
              SizedBox(height: 10.h,),
              Stack(
                alignment: Alignment.center,
                children: [
                  Lottie.asset(
                    'assets/animation_lmos8c7t.json',
                    height: 300.h,
                    reverse: true,
                    repeat: false,
                    fit: BoxFit.cover,
                  ),                  
                  Lottie.asset(
                    'assets/animation_lmov0gof.json',
                    height: 200.h,
                    reverse: true,
                    repeat: false,
                    fit: BoxFit.cover
                  ), 
                ],
              ),                                
              Text("PAYMENT SUCCESSFUL",style: TextStyle(
                color: Color.fromARGB(255, 2, 109, 4),
                fontSize: 50.sp,
                fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h,),
              Text("Thank you for your payment",style: TextStyle(
                color: Colors.black,
                fontSize: 28.sp,
                fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 100.h,),
              GestureDetector( 
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5.h, bottom: 20.h),
                  width: 200.w,
                  alignment: Alignment.center,                
                  padding: EdgeInsets.symmetric(horizontal:16.0.w, vertical: 16.0.h),               
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 2, 109, 4),
                    borderRadius: BorderRadius.circular(10.r),                  
                  ),
                  child: Text(
                    "DONE",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0.sp,
                    ),
                  ),            
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}