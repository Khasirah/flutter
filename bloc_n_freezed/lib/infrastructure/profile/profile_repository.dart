import 'package:bloc_n_freezed/domain/core/user/user_response.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

class ProfileRepository {
  final _dio = Dio();

  Future<Either<String, UserResponse>> getAllUserData() async {
    Response response;

    try {
      response = await _dio.get("https://reqres.in/api/users?page=2");

      UserResponse userResp = UserResponse.fromJson(response.data);

      return right(userResp);
    } catch (e) {
      return left("terjadi kesalahan saat pengambilan data");
    }
  }
}
