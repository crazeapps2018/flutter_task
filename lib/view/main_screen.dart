import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';
import '../viewmodel/main_view_model.dart';

class MainScreen extends GetView<MainViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(centerTitle: true,
        title: Text('Demo'),
        backgroundColor: Colors.deepOrange),
        body: controller.loading.isFalse
            ? ListView.builder(
                itemCount: controller.postList.length,
                itemBuilder: (context, position) {
                  var post = controller.postList[position];

                  return InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.postDetailScreen,
                          arguments: [post]);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          post.title!,
                          style: TextStyle(fontSize: 22.0),
                        ),
                      ),
                    ),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
