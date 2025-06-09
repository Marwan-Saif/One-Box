import 'package:dartz/dartz.dart';
import 'package:one_box/core/errors/failures.dart';
import 'package:one_box/features/Home/data/models/categories_respons.dart';

abstract class HomeRepo {
  Future<Either<ServerFailure, CategoriesResponse>> getCategoriesData(
      {int perPage = 10});
}
