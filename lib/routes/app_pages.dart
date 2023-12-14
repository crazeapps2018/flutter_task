
import 'package:flutter/material.dart';
import 'package:flutter_task/routes/app_routes.dart';
import 'package:flutter_task/view/post_detail_screen.dart';
import 'package:flutter_task/viewmodel/main_view_model.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../view/main_screen.dart';
import '../viewmodel/post_detail_view_model.dart';


class AppPages {
  static var list = [

    GetPage(
      name: AppRoutes.mainScreen,
      page: () => MainScreen(),
      binding: MainScreenBindig(),
      curve: Curves.easeInOutQuart,
      transition: Transition.native,
      transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
        name: AppRoutes.postDetailScreen,
        page: () => PostDetailScreen(),
        binding: PostDetailScreenBinding(),
        curve: Curves.easeInOutQuart,
        transition: Transition.native,
        transitionDuration: Duration(milliseconds: 500)
    )
  ];
}