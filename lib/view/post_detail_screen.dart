import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../viewmodel/main_view_model.dart';
import '../viewmodel/post_detail_view_model.dart';

class PostDetailScreen extends GetView<PostDetailScreenViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.loading.isFalse
              ? SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          controller.title.value,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        Text(
                          controller.description.value,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ));
  }
}
