part of 'categories_cubit.dart';

@immutable
sealed class CategoriesState {}

final class CategoriesInitial extends CategoriesState {}

//****get sup categories data */
final class GetSupCategoriesDataloadingState extends CategoriesState {}

final class GetSupCategoriesDataSuccessState extends CategoriesState {
  final SupCategoriesResponse supCategoriesResponse;
  GetSupCategoriesDataSuccessState(this.supCategoriesResponse);
}

final class GetSupCategoriesDataErrorState extends CategoriesState {
  final String errMessage;
  GetSupCategoriesDataErrorState(this.errMessage);
}

//******** get sup category product data*********** */

final class GetSupCategoryProductDataloadingState extends CategoriesState {}

final class GetSupCategoryProductDataSuccessState extends CategoriesState {
  final SupcategoryProductsResponsModel supCategoryProductResponse;
  GetSupCategoryProductDataSuccessState(this.supCategoryProductResponse);
}

final class GetSupCategoryProductDataErrorState extends CategoriesState {
  final String errMessage;
  GetSupCategoryProductDataErrorState(this.errMessage);
}
