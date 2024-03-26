import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/update_product_page.dart';

import 'home_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        routes: {
          HomePage.id: (context) => HomePage(),
          UpdateProductPage.id: (context) => UpdateProductPage()
        },
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.id,
      ),
    );
  }
}
