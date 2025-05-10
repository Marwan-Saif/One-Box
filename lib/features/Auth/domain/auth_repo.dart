import 'package:dartz/dartz.dart';
import 'package:one_box/core/errors/failures.dart';
import 'package:one_box/features/Auth/data/models/log_out_response.dart';
import 'package:one_box/features/Auth/data/models/send_otp_respons.dart';
import 'package:one_box/features/Auth/data/models/verify_otp_respons.dart';

abstract class AuthRepo {
  Future<Either<ServerFailure, SendOtpRespons>> sendOTP(String emailOrMobile);
  Future<Either<ServerFailure, VerifyOtpRespons>> verifyOTP(
      String emailOrMobile, int otp);
  Future<Either<ServerFailure, LogoutRespons>> logout();
}
