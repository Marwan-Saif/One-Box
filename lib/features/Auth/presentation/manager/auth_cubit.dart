import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:one_box/constant.dart';
import 'package:one_box/core/utils/prefs_keys.dart';
import 'package:one_box/core/utils/secure_storage.dart';
import 'package:one_box/core/widgets/custom_snakbar.dart';
import 'package:one_box/features/Auth/domain/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authrepo;
  static String? token;
  static int? otp;
  static String? emailORMobile;
  AuthCubit(this.authrepo) : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);

  Future<void> sendOTP(String emailOrMobile, context) async {
    emit(SendOTPLoading());
    emailORMobile = emailOrMobile;
    final result = await authrepo.sendOTP(emailOrMobile);

    result.fold(
      (l) {
        emit(SendOTPError(l.errMessage));
        log(l.errMessage);
      },
      (r) {
        otp = r.otp;
        customSnackBar(context, otp.toString());
        emit(SendOTPSuccess());
      },
    );
  }

  Future<void> verifyOTP() async {
    emit(VerifyOTPLoading());
    final result = await authrepo.verifyOTP(emailORMobile!, otp!);
    result.fold(
      (l) => emit(VerifyOTPError(l.errMessage)),
      (r) {
        //**save token */
        kToken = r.token!;
        token = r.token!;
        SecureStorageService.writeData(
          key: PrefsKeys.authToken,
          value: r.token!,
        );
        SecureStorageService.writeData(
          key: PrefsKeys.userName,
          value: emailORMobile!,
        );
        emit(VerifyOTPSuccess());
      },
    );
  }

  Future<void> logout() async {
    emit(LogoutLoading());
    final result = await authrepo.logout();
    result.fold(
      (l) => emit(LogoutError(l.errMessage)),
      (r) => emit(LogoutSuccess()),
    );
  }
}
