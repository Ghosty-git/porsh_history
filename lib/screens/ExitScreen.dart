import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/MenuScreen.dart';

class ExitScreen extends StatefulWidget {
  const ExitScreen({super.key});

  @override
  State<ExitScreen> createState() => _ExitScreenState();
}

class _ExitScreenState extends State<ExitScreen> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 90.h,
              ),
              Text(
                'Exit',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Iowan Old Style",
                  fontSize: 48.sp,
                ),
              ),
              SizedBox(
                height: 230.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff282727),
                        borderRadius: BorderRadius.circular(20).r),
                    width: 84.w,
                    height: 73.h,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        if (Platform.isAndroid) {
                          SystemNavigator.pop();
                        } else if (Platform.isIOS) {
                          exit(0);
                        }
                      },
                      child: Text(
                        "Yes",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.sp,
                            fontFamily: "Iowan Old Style"),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff282727),
                        borderRadius: BorderRadius.circular(20).r),
                    width: 84.w,
                    height: 73.h,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        customNavigatorPush(context, const MenuScreen());
                      },
                      child: Text(
                        "No",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.sp,
                            fontFamily: "Iowan Old Style"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
