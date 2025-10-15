import 'package:dio/dio.dart';

class AuthenticationService {
  final String apiUrl = 'http://172.16.180.116:5017/api';

  Future<void> login(String email, String password) async {
    Dio dio = Dio(BaseOptions(baseUrl: apiUrl));
    String endpoint = '/authentication/login';
    final Map<String, String> data = {'email': email, 'password': password};
    final response = await dio.post(endpoint, data: data);
    if (response.statusCode != 200) {
      throw Exception('Failed to login: ${response.data['message']}');
    }

    print('Login successful: ${response.data}');
  }
}
