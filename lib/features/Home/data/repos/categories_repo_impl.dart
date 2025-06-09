import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:one_box/constant.dart';
import 'package:one_box/core/errors/failures.dart';
import 'package:one_box/core/services/api_services.dart';
import 'package:one_box/core/utils/end_points.dart';
import 'package:one_box/features/Home/data/models/supcategory_products_respons.dart';
import 'package:one_box/features/Home/data/models/supcategory_response.dart';
import 'package:one_box/features/Home/domain/categories_repo.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  final ApiService apiService;

  CategoriesRepoImpl({required this.apiService});

  @override
  Future<Either<ServerFailure, SupCategoriesResponse>> getSupCategoriesData(
      {int id = 6}) async {
    try {
      log("token from home repo impl $kToken");
      var response = await apiService.getData(
        endpoint: EndPoints.supCategories + "/" + id.toString(),
        headers: {'Authorization': kToken},
      );
      log(response.data.toString());
      return right(SupCategoriesResponse.fromJson(response.data));
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
  ////************************ getSupCategoryProducts********/

  @override
  Future<Either<ServerFailure, SupcategoryProductsResponsModel>>
      getSupCategoryProducts({int id = 6}) async {
    try {
      log("token from home repo impl $kToken");
      var response = await apiService.getData(
        endpoint: EndPoints.supCategoryProducts + id.toString(),
        headers: {'Authorization': kToken},
      );
      log(response.data.toString());
      return right(SupcategoryProductsResponsModel.fromJson(response.data));
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
