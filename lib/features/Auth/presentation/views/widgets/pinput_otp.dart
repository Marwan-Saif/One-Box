import 'package:flutter/material.dart';
import 'package:one_box/features/Auth/presentation/manager/auth_cubit.dart';
import 'package:pinput/pinput.dart';

class PinPut extends StatelessWidget {
  const PinPut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    final defaultPinTheme = PinTheme(
      width: MediaQuery.of(context).size.width * .18,
      height: 70,
      textStyle: const TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(30),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.transparent), // Transparent border
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(),
    );
    final submittedPinTheme = defaultPinTheme.copyWith(
      textStyle: const TextStyle(
        fontSize: 24,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
      decoration: defaultPinTheme.decoration!.copyWith(),
    );
    return Pinput(
      length: 4,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
      onCompleted: (pin) {
        cubit.verifyOTP();
        // context.pushReplacement(AppRouter.forgetPassword);
      },
    );
  }
}
