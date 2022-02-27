import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:vitahealth/Home/http/http_controller.dart';

import '../../Model/user_model.dart';

class httpPage extends GetView<HttpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HttpPage')),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final UserModel item = state[index];
            return ListTile(
              title: Text(item.nome),
            );
          },
        );
      }, onError: (error) {
        return Center(child: Text(error!));
      }),
    );
  }
}
