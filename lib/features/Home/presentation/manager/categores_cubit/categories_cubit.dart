import 'dart:developer';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:one_box/features/Home/data/models/supcategory_response.dart';
import 'package:one_box/features/Home/domain/categories_repo.dart';
import 'package:one_box/features/Home/data/models/supcategory_products_respons.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesRepo categoriesRepo;
  CategoriesCubit(this.categoriesRepo) : super(CategoriesInitial());
  static CategoriesCubit get(context) => BlocProvider.of(context);

  void getSupCategories({required int id}) async {
    emit(GetSupCategoriesDataloadingState());
    final result = await categoriesRepo.getSupCategoriesData(id: id);
    result.fold(
      (l) {
        log("categories cubit called error state \n${l.errMessage}");

        emit(GetSupCategoriesDataErrorState(l.errMessage));
      },
      (r) {
        log("categories cubit called" + "success state \n" + r.toString());

        emit(GetSupCategoriesDataSuccessState(r));
      },
    );
  }

  ///***************** get sup category products data */
  ///
}
