import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitahealth/Home/http/http_Page.dart';
import 'package:vitahealth/Home/http/http_bindings.dart';

import 'Home/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => HomePage(), children: [
          GetPage(
              name: '/http', page: () => httpPage(), binding: HttpBindings())
        ])
      ],
    );
  }
}
