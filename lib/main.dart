import 'package:flutter/material.dart';
import 'package:flutter_task/routes/app_pages.dart';
import 'package:flutter_task/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.mainScreen,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      title: 'App Name',
    );
  }
}
