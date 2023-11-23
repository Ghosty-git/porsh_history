import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/MenuScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    timerSplashScreen();
    super.initState();
  }

  Future timerSplashScreen() async{
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    customNavigatorPushAndRemove(context, const MenuScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/back_img2.png"),
          ),
        ),
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Loading",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48.sp,
                  fontFamily: "Iowan Old Style",
                ),
              ),
              SizedBox(height: 21.h),
              LinearProgressIndicator(
                backgroundColor: const Color(0xff635C5C),
                valueColor: const AlwaysStoppedAnimation(Colors.white),
                minHeight: 25.h,
              ),
              SizedBox(height: 75.h),
            ],
          ),
        ),
      ),
    );
  }
}