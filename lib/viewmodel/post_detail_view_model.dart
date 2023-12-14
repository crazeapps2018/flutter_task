import 'package:flutter_task/data/post_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class PostDetailScreenViewModel extends FullLifeCycleController {
  final loading = true.obs;

  var title = "".obs;
  var description = "".obs;


  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      var post =  Get.arguments[0] as PostModel;

      title.value = post.title!;
      description.value = post.body!;
      loading.value = false;


    }
  }
}

class PostDetailScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostDetailScreenViewModel());
  }
}