import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errMessage});

  // ServerFailure(String super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(
            errMessage: ' Connection Timeout With ApiServer');
      case DioExceptionType.sendTimeout:
        return const ServerFailure(errMessage: ' Send Timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(
            errMessage: ' Recive Timeout With ApiServer');
      // case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            statusCode: dioError.response!.statusCode,
            response: dioError.response!.data);
      case DioExceptionType.cancel:
        return const ServerFailure(
            errMessage: 'Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return const ServerFailure(
            errMessage: ' connection Error Check Your internet');
      // case DioExceptionType.unknown:
      // return ServerFailure(errMessage: ' Recive Timeout With ApiServer');
      default:
        return const ServerFailure(
            errMessage: 'Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromBadResponse({int? statusCode, dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['message']);
    } else if (statusCode == 404) {
      return const ServerFailure(
          errMessage: 'Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return const ServerFailure(
          errMessage: 'Internal Server error, Please try later');
    } else {
      return const ServerFailure(
          errMessage: 'Opps There was an Error, Please try again');
    }
  }
}
