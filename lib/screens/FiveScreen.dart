import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/MenuScreen.dart';
import 'package:porsh_history/screens/SixScreen.dart';

class FiveScreen extends StatefulWidget {
  const FiveScreen({super.key});

  @override
  State<FiveScreen> createState() => _FiveScreenState();
}

class _FiveScreenState extends State<FiveScreen> {
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
              Image.asset("assets/images/image5.png"),
              SizedBox(height: 7.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 65.w,
                  ),
                  Expanded(
                    child: Text(
                      "Porsche 911 Turbo S (992)",
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
                        customNavigatorPush(context, SixScreen(),);
                      },
                      child: Image.asset("assets/images/Arrow_forward.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 46.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child:   Text.rich(
                  TextSpan(
                    text:
                        "Earlier this year, Porsche revealed and released the ",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Iowan Old Style",
                        fontSize: 16.sp),
                    children: [
                      TextSpan(
                        text: "2021 model year Type 992 911 Turbo S",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            " and, as is apparent all over the internet, it’s been a bit of a hit. Now, riding that wave of success, the new ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Iowan Old Style",
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text: "Porsche Type 992 911 Turbo",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            " (non-S) has been revealed. It would be a disservice to call this new Turbo a “lesser” car than the Turbo S, but it does have less in most departments. Less power at 573 HP. Less features compared to the jam-packed Turbo S.",
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