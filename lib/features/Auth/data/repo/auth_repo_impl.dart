import 'package:dio/dio.dart';
import 'package:one_box/core/errors/failures.dart';
import 'package:one_box/core/services/api_services.dart';
import 'package:one_box/core/utils/end_points.dart';
import 'package:one_box/features/Auth/data/models/log_out_response.dart';
import 'package:one_box/features/Auth/data/models/send_otp_respons.dart';
import 'package:one_box/features/Auth/data/models/verify_otp_respons.dart';
import 'package:one_box/features/Auth/domain/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});

  @override
  Future<Either<ServerFailure, SendOtpRespons>> sendOTP(
      String emailOrMobile) async {
    try {
      Response response = await apiService.postData(
          endpoint: EndPoints.sendOTP, data: {"value": emailOrMobile});

      return right(SendOtpRespons.fromJson(response.data));
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<ServerFailure, VerifyOtpRespons>> verifyOTP(
      String emailOrMobile, int otp) async {
    try {
      Response response = await apiService.postData(
          endpoint: EndPoints.verifyOTP,
          data: {"value": emailOrMobile, "otp": otp});
      return right(VerifyOtpRespons.fromJson(response.data));
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<ServerFailure, LogoutRespons>> logout() async {
    try {
      Response response = await apiService.postData(
        endpoint: EndPoints.logout,
      );
      return right(LogoutRespons.fromJson(response.data));
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
