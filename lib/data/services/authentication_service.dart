import 'package:boardforge_app/core/utils/environment.dart';
import 'package:boardforge_app/data/models/token.dart';
import 'package:dio/dio.dart';

class AuthenticationService {
  Future<Token> login(String email, String password) async {
    Dio dio = Dio(BaseOptions(baseUrl: Environment.instance.baseApiUrl));
    String endpoint = '/authentication/login';
    final Map<String, String> data = {'email': email, 'password': password};
    final response = await dio.post(endpoint, data: data);
    if (response.statusCode != 200) {
      throw Exception('Failed to login: ${response.data['message']}');
    }

    return Token.fromJson(response.data);
  }
}
