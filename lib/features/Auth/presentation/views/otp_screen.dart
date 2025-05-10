import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/helper_functions/app_router.dart';
import 'package:one_box/core/widgets/custom_progresshub.dart';
import 'package:one_box/features/Auth/presentation/manager/auth_cubit.dart';
import 'package:one_box/features/Auth/presentation/views/widgets/pinput_otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isportrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          log(state.toString() + "************");
          if (state is VerifyOTPSuccess) {
            context.go(AppRouter.masterScreen);
          }
        },
        builder: (context, state) {
          return CustomProgressHub(
            isLoading: state is VerifyOTPLoading,
            child: Container(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: isportrait ? width * .12 : width * .3),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'ادخل رمز التحقق من الهاتف',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  const Align(
                    alignment: AlignmentDirectional.center,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: PinPut(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'لم تستلم رمز التحقق؟',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'أرسل رمز التحقق مرة أخرى',
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  ),
                  SizedBox(
                    height: height * 0.2,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
