import 'dart:convert';

import 'package:boardforge_app/core/utils/environment.dart';
import 'package:boardforge_app/data/models/token.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TeamsService {
  Future<void> listAsync() async {
    Dio dio = Dio(BaseOptions(baseUrl: Environment.instance.baseApiUrl));
    String endpoint = '/teams';
    final storage = FlutterSecureStorage();
    final String tokenStr = await storage.read(key: 'authToken') ?? '';
    final Token token = Token.fromJson(jsonDecode(tokenStr));

    dio.options.headers['Authorization'] = 'Bearer ${token.token}';

    final response = await dio.get(endpoint);
    if (response.statusCode != 200) {
      throw Exception('Failed to fetch teams: ${response.data['message']}');
    }

    print('Teams fetched: ${response.data}');
  }
}
