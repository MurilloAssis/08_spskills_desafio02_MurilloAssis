import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:vitahealth/Home/http/Repository/user_http_repository.dart';
import 'package:vitahealth/Home/http/http_controller.dart';
import 'package:vitahealth/Repository/i_user_repository.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
