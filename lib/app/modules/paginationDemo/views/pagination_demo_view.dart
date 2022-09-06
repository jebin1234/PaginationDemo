import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../controllers/pagination_demo_controller.dart';
import '../post.dart';

class PaginationDemoView extends GetView {
  PaginationDemoController paginationDemoController=Get.find<PaginationDemoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginationDemoView'),
        centerTitle: true,
      ),
      body:RefreshIndicator(
        onRefresh: () => Future.sync(() => paginationDemoController.refresh()),
        child: PagedListView<int, Post>(
          pagingController: paginationDemoController.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Post>(
            itemBuilder: (context, item, index) =>
                Padding(
                  padding:  EdgeInsets.all(10.0),
                  child:Container(
                    height: 180,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.amber
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text( item.title,style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           SizedBox(height: 10,),
                          Text( item.body,
                          ),


                        ],
                      ),
                    ),
                  )



                ),

          ),

        ),
      ),
    );
  }
}
