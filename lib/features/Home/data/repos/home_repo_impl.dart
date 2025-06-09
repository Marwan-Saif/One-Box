import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:one_box/constant.dart';
import 'package:one_box/core/errors/failures.dart';
import 'package:one_box/core/services/api_services.dart';
import 'package:one_box/core/utils/end_points.dart';
import 'package:one_box/features/Home/data/models/categories_respons.dart';
import 'package:one_box/features/Home/domain/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<ServerFailure, CategoriesResponse>> getCategoriesData(
      {int perPage = 10}) async {
    try {
      log("token from home repo impl $kToken");
      var response = await apiService.getData(
        endpoint: EndPoints.categories,
        // queryParameters: {"per_page": perPage},
        headers: {'Authorization': kToken},
      );
      log(response.data.toString());
      return right(CategoriesResponse.fromJson(response.data));
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
