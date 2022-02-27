import 'dart:convert';

import 'package:vitahealth/Home/http/http_Page.dart';
import 'package:vitahealth/Model/user_model.dart';
import 'package:vitahealth/Repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http.get('http://192.168.0.30:5000/api/Usuarios');

    final List<dynamic> responseMap = jsonDecode(response.body);

    return responseMap.map((resp) => UserModel.fromMap(resp)).toList();
  }
}
