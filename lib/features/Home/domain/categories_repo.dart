import 'package:dartz/dartz.dart';
import 'package:one_box/core/errors/failures.dart';
import 'package:one_box/features/Home/data/models/supcategory_products_respons.dart';
import 'package:one_box/features/Home/data/models/supcategory_response.dart';

abstract class CategoriesRepo {
  Future<Either<ServerFailure, SupCategoriesResponse>> getSupCategoriesData(
      {int id = 6});
  Future<Either<ServerFailure, SupcategoryProductsResponsModel>>
      getSupCategoryProducts({int id = 1});
}
