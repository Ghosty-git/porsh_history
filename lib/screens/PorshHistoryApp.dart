import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/screens/SplashScreen.dart';

class PorshHistoryApp extends StatefulWidget {
  const PorshHistoryApp({super.key});

  @override
  State<PorshHistoryApp> createState() => _PorshHistoryAppState();
}

class _PorshHistoryAppState extends State<PorshHistoryApp> {
    
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}