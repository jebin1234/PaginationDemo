import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView {
 final HomeController controller= Get.find<HomeController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagination'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.loading.value){
          return Center(
            child:CircularProgressIndicator(),
          );
        }
        if(controller.posts.isEmpty){
          return Center(
            child: Text('No Data Found'),
          );
        }
        return

        ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (BuildContext context, int index) {

            return ListTile(
              leading:Text(controller.posts[index]['id'].toString()),
              title: Text(controller.posts[index]['title']),
            );
          },
        );

      }
      )

    );
  }
}
