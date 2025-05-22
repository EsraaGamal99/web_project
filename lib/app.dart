import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_project/features/home/ui/screens/home_web_screen.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print('width $width height $height');
    //min width: 766.4
    return ScreenUtilInit(
      designSize: const Size(1800, 1200),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  HomeWebScreen(),
      ),
    );
  }
}
