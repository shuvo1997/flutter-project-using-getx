import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fetch_list_controller.dart';

class FetchListView extends StatelessWidget {
  FetchListView({Key? key}) : super(key: key);
  final fetchListController = Get.put(FetchListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FetchListView'),
          centerTitle: true,
        ),
        body: Center(
          child: Obx(() {
            if (fetchListController.isLoading.value) {
              return const CircularProgressIndicator();
            }
            return ListView.builder(
              itemCount: fetchListController.postList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(fetchListController.postList[index].title),
                );
              },
            );
          }),
        ));
  }
}
