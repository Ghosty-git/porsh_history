import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/MenuScreen.dart';
import 'package:porsh_history/screens/TenScreen.dart';

class NineScreen extends StatefulWidget {
  const NineScreen({super.key});

  @override
  State<NineScreen> createState() => _NineScreenState();
}

class _NineScreenState extends State<NineScreen> {
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
              Image.asset("assets/images/image9.png"),
              SizedBox(height: 7.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 65.w,
                  ),
                  Expanded(
                    child: Text(
                      "Porsche Taycan Turbo and Turbo S",
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
                          TenScreen(),
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
                child: Text(
                  'The Porsche Taycan is the car company’s new production electric vehicle. It is designed to put everything that people know and love from the company into a new platform of car that’s powered entirely by electricity. It’s also the car that’s set to kick off Porsche’s leap in electrification.',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Iowan Old Style",
                    fontSize: 16.sp,
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
