part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

//**getCategories */
final class GetCategoriesDataloadingState extends HomeState {}

final class GetCategoriesDataSuccessState extends HomeState {
  final CategoriesResponse categoriesResponse;
  GetCategoriesDataSuccessState(this.categoriesResponse);
}

final class GetCategoriesDataErrorState extends HomeState {
  final String failure;
  GetCategoriesDataErrorState(this.failure);
}

///*************getSupCategories */
final class GetSupCategoriesDataloadingState extends HomeState {}

final class GetSupCategoriesDataSuccessState extends HomeState {
  final SupCategoriesResponse supCategoriesResponse;
  GetSupCategoriesDataSuccessState(this.supCategoriesResponse);
}

final class GetSupCategoriesDataErrorState extends HomeState {
  final String failure;
  GetSupCategoriesDataErrorState(this.failure);
}
