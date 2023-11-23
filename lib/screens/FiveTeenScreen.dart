import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/MenuScreen.dart';
import 'package:porsh_history/screens/SixteenScreen.dart';

class FiveteenScreen extends StatefulWidget {
  const FiveteenScreen({super.key});

  @override
  State<FiveteenScreen> createState() => _FiveteenScreenState();
}

class _FiveteenScreenState extends State<FiveteenScreen> {
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
              Image.asset("assets/images/image16.png"),
              SizedBox(height: 7.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 65.w,
                  ),
                  Expanded(
                    child: Text(
                      "Porsche Cayenne  \nCoupe",
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
                        customNavigatorPush(context, const SixteenScreen());
                      },
                      child: Image.asset("assets/images/Arrow_forward.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 46.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child:  Text(
                  "If you hadn’t yet seen any pictures of this new Cayenne, you might be wondering if we would be talking about some 2-door-cross-utility version of Porsche’s largest SUV. At first glance of the photos, calling the upcoming Cayenne a “coupe” seems somewhat oxymoronic, because the Cayenne Coupe is still very much an SUV. In fact, Porsche says that the Coupe is mostly similar to the regular SUV, particularly on the inside.",
                  style: TextStyle(color: Colors.white, fontFamily: "Iowan Old Style",fontSize: 16.sp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}