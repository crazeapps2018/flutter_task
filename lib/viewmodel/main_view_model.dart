import 'package:flutter/material.dart';
import 'package:flutter_task/data/post_model.dart';
import 'package:flutter_task/viewmodel/post_detail_view_model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class MainViewModel extends FullLifeCycleController {
  final loading = true.obs;

  var postList = <PostModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    getPostsData();
  }

  void getPostsData() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      var dataList =
          (response.data as List).map((e) => PostModel.fromJson(e)).toList();
      postList.value = dataList;
      loading.value = false;

      print(response);
    } catch (e) {
      print(e);
    }
  }
}

class MainScreenBindig extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainViewModel());
    Get.lazyPut(() => PostDetailScreenViewModel());
  }
}
