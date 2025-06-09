import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:one_box/core/services/api_services.dart';
import 'package:one_box/features/Home/data/models/categories_respons.dart';
import 'package:one_box/features/Home/data/models/supcategory_response.dart';
import 'package:one_box/features/Home/domain/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  static HomeCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());

  void getCtegories() async {
    emit(GetCategoriesDataloadingState());
    final result = await homeRepo.getCategoriesData();
    result.fold(
      (l) => emit(GetCategoriesDataErrorState(l.errMessage)),
      (r) {
        emit(GetCategoriesDataSuccessState(r));
      },
    );
  }
}
