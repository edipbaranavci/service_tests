// ignore_for_file: public_member_api_docs, inference_failure_on_function_invocation, avoid_print

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:service_tests/features/models/error_model.dart';
import 'package:service_tests/features/models/user_model/user_model.dart';

const String _baseUrl = 'https://jsonplaceholder.typicode.com/';

class UserService {
  final _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<Either<ErrorModel, List<UserModel>?>> getUsers() async {
    try {
      final response = await _dio.get(UserServiceEnums.users.name);

      List list = [];
      if (response.data is List) {
        list = response.data;
      }
      return Right(list.map((e) => UserModel.fromJson(e)).toList());
    } on DioError catch (e) {
      return Left(ErrorModel(
          errorMessage: e.message,
          statusCode: e.response?.statusCode.toString()));
    }
  }
}

enum UserServiceEnums { users }
