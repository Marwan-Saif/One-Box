import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/helper_functions/app_router.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/core/widgets/custom_progresshub.dart';
import 'package:one_box/features/Auth/presentation/manager/auth_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.imagesLogin), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              log(state.toString() + "************");
              if (state is SendOTPSuccess) {
                context.go(AppRouter.otpScreen);
              }
            },
            builder: (context, state) {
              return CustomProgressHub(
                  isLoading: state is SendOTPLoading, child: LoginViewBody());
            },
          ),
        ),
      ),
    );
  }
}

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  TextEditingController controller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'هلا لنبدأ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            margin: const EdgeInsetsDirectional.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: const Color(0xFF64748B),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "تسجيل الدخول   او   اشترك الان",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [shadow()],
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              controller: controller,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 16, vertical: 5),
                hintText: 'الرجاء ادخال البريد الالكتروني او رقم الهاتف',
                labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9CA3AF)),
                border: border(),
                enabledBorder: border(),
                focusedBorder: border(),
                disabledBorder: border(),
                focusedErrorBorder: border(),
                errorBorder: border(),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (formKey.currentState!.validate()) {
                cubit.sendOTP(controller.text, context);
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: MediaQuery.of(context).size.width * 0.3),
              margin: const EdgeInsetsDirectional.symmetric(vertical: 15),
              decoration: BoxDecoration(
                boxShadow: [shadow()],
                color: const Color(0xFF1750B9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "متابعة",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  BoxShadow shadow() {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 0,
      blurRadius: 4,
      offset: const Offset(0, 5),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey));
  }
}
