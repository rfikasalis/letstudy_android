import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<dynamic> registerUser(Map<String, dynamic>? data) async {
    try {
      Response response = await _dio.post(
          'https://api.loginradius.com/identity/v2/auth/register',
          data: data,
          queryParameters: {'apikey': 'fe0c9cab-1ddf-4942-906e-8af161877f72'},
          options: Options(headers: {
            'X-LoginRadius-Sott':
                'A8bsxTpjwrsPx3OBWyRToCbv26aUU3ARucRF2NeljffyH4qxb1yd927E+aNV7y7+n0xo3aSXRIKkT4VoThOtOeQlI092Zmb9sC4qqXmxdzY=*2240c38b0924955b6f28a3fc16cca8e7'
          }));
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<dynamic> login(String email, String password) async {
    try {
      Response response = await _dio.post(
        'https://api.loginradius.com/identity/v2/auth/login',
        data: {
          'email': email,
          'password': password,
        },
        queryParameters: {'apikey': 'fe0c9cab-1ddf-4942-906e-8af161877f72'},
      );
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<dynamic> logout(String accessToken) async {
    try {
      Response response = await _dio.get(
        'https://api.loginradius.com/identity/v2/auth/access_token/InValidate',
        queryParameters: {'apikey': 'fe0c9cab-1ddf-4942-906e-8af161877f72'},
        options: Options(
          headers: {
            'Authorization':
                'Bearer {https://api.loginradius.com/api/v2/access_token}'
          },
        ),
      );
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
