import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pagination_controller.dart';

class PaginationView extends GetView {
  PaginationController paginationController = Get.put(PaginationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaginationView'),
        centerTitle: true,
      ),
      body: GetBuilder(
        init: paginationController,
        builder: (value) => ListView.builder(
          controller:paginationController.scrollController,
          itemCount: paginationController.list.length,
          itemBuilder: (context, index) {


            return Padding(
              padding:  EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                child: Center(
                  child: Text(paginationController.list[index].name),
                ),
              ),
            );
          },
        ),
      ),

    );
  }
}
