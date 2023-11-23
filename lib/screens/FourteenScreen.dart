import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/FiveTeenScreen.dart';
import 'package:porsh_history/screens/MenuScreen.dart';

class FourteenScreen extends StatefulWidget {
  const FourteenScreen({super.key});

  @override
  State<FourteenScreen> createState() => _FourteenScreenState();
}

class _FourteenScreenState extends State<FourteenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/back_img.png"),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(width: 20.w),
                  InkWell(
                    onTap: () {
                      customNavigatorPush(
                        context,
                        MenuScreen(),
                      );
                    },
                    child: Image.asset("assets/images/menu_icon.png"),
                  )
                ],
              ),
              SizedBox(height: 51.h),
              Image.asset("assets/images/image14.png"),
              SizedBox(height: 7.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 65.w,
                  ),
                  Expanded(
                    child: Text(
                      "Porsche 911 Carrera \n",
                      style: TextStyle(
                        fontSize: 32.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 53.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/images/Arrow_back.png"),
                    ),
                    InkWell(
                      onTap: () {
                        customNavigatorPush(
                          context,
                          FiveteenScreen(),
                        );
                      },
                      child: Image.asset("assets/images/Arrow_forward.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 46.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text.rich(
                  TextSpan(
                    text:
                        "The most basic version of the ",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Iowan Old Style",
                        fontSize: 16.sp),
                    children: [
                      TextSpan(
                        text: "Porsche 911",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            " Carrera has now been unveiled. ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Iowan Old Style",
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text: "Porsche",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            " chose to detune the twin-turbocharged flat-six engine and downgrade some of the chassis components. These cars offer very good performance and driving dynamics for a slightly lower price.",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Iowan Old Style",
                            fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}