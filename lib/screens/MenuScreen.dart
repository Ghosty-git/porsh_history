import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/ExitScreen.dart';
import 'package:porsh_history/screens/FirstScreen.dart';
import 'package:porsh_history/screens/HistoryScreen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                customNavigatorPush(context, const FirstScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff282727),
                    borderRadius: BorderRadius.circular(20).r),
                width: 311.w,
                height: 79.h,
                alignment: Alignment.center,
                child: Text(
                  "ALL CARS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                      fontFamily: "Iowan Old Style"),
                ),
              ),
            ),
             SizedBox(height: 50.h),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff282727),
                  borderRadius: BorderRadius.circular(20).r),
              width: 311.w,
              height: 79.h,
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  customNavigatorPush(context, const HistoryScreen());
                },
                child: Text(
                  "History",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                      fontFamily: "Iowan Old Style"),
                ),
              ),
            ),
            SizedBox(height: 68.h),
            InkWell(
              onTap: () {
                customNavigatorPush(context, ExitScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff282727),
                    borderRadius: BorderRadius.circular(20).r),
                width: 311.w,
                height: 79.h,
                alignment: Alignment.center,
                child:  Text(
                  "Exit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                      fontFamily: "Iowan Old Style"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
