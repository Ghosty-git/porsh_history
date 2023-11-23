import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/MenuScreen.dart';
import 'package:porsh_history/screens/ThreeteenScreen.dart';

class TwelveScreen extends StatefulWidget {
  const TwelveScreen({super.key});

  @override
  State<TwelveScreen> createState() => _TwelveScreenState();
}

class _TwelveScreenState extends State<TwelveScreen> {
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
                        const MenuScreen(),
                      );
                    },
                    child: Image.asset("assets/images/menu_icon.png"),
                  )
                ],
              ),
              SizedBox(height: 51.h),
              Image.asset("assets/images/image12.png"),
              SizedBox(height: 7.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 65.w,
                  ),
                  Expanded(
                    child: Text(
                      "Porsche Taycan 4S \n",
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
                          const ThreeteenScreen(),
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
                        "The Porsche Taycan was revealed in September. Porsche officially showed off ",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Iowan Old Style",
                        fontSize: 16.sp),
                    children: [
                      TextSpan(
                        text: "the Turbo and Turbo S",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            " Now it has taken the covers off ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Iowan Old Style",
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text: "a lower-grade Taycan, the 4S",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            ". The Taycan 4S is the more affordable version of the four-door electric car, but it still offers impressive performance and a high price tag. However, this isn’t really a surprise. We’d expect no less from Porsche, and we also expect Porsche to have no trouble selling these innovative models.",
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