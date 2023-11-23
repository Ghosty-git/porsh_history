import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/MenuScreen.dart';
import 'package:porsh_history/screens/TwelveScreen.dart';

class ElevenScreen extends StatefulWidget {
  const ElevenScreen({super.key});

  @override
  State<ElevenScreen> createState() => _ElevenScreenState();
}

class _ElevenScreenState extends State<ElevenScreen> {
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
              Image.asset("assets/images/image11.png"),
              SizedBox(height: 7.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 65.w,
                  ),
                  Expanded(
                    child: Text(
                      "Porsche 718 Cayman GT4 & 718 Boxster Spyder",
                      style: TextStyle(
                        fontSize: 32.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.h),
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
                          TwelveScreen(),
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
                        "The first iteration of the ",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Iowan Old Style",
                        fontSize: 16.sp),
                    children: [
                      TextSpan(
                        text: "Porsche Cayman GT4 made its debut in 2015",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            ", drawing a conclusion to the third generation of Boxster/Cayman (981). Since that time, ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Iowan Old Style",
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text: "the GT4",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            " has become a cult hero amongst purists with its absence of frills (not to be misheard as ‘thrills’), relative affordability and undisputable demi-god-status as one of the ultimate driver’s car. It is a ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Iowan Old Style",
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text: "Porshe model",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            decorationColor: Colors.white,
                            fontSize: 16.sp),
                      ),
                      TextSpan(
                        text:
                            " that every fan now lusts after.",
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