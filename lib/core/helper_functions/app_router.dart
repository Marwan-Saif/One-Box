import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/services/getit_service.dart';
import 'package:one_box/features/Auth/domain/auth_repo.dart';
import 'package:one_box/features/Auth/presentation/manager/auth_cubit.dart';
import 'package:one_box/features/Auth/presentation/views/login_view.dart';
import 'package:one_box/features/Auth/presentation/views/otp_screen.dart';
import 'package:one_box/features/Home/presentation/views/master_screen.dart';
import 'package:one_box/features/Splash/presentation/views/splash_view.dart';
import 'package:one_box/features/cart/presentaion/views/aucation_product.dart';
import 'package:one_box/features/cart/presentaion/views/normal_product.dart';

abstract class AppRouter {
  static const login = '/login';
  static const otpScreen = '/otpScreen';

  static const masterScreen = '/masterScreen';
  static const normalProduct = '/normalProduct';
  static const aucationProduct = '/aucationProduct';

  // static final splashScreen = '/splash';
  static final roter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(getit.get<AuthRepo>()),
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: otpScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(getit.get<AuthRepo>()),
          child: const OtpScreen(),
        ),
      ),
      GoRoute(
        path: masterScreen,
        builder: (context, state) => const MasterScreen(),
      ),
      GoRoute(
        path: normalProduct,
        builder: (context, state) => const NormalProduct(),
      ),
      GoRoute(
        path: aucationProduct,
        builder: (context, state) => const AucationProduct(),
      ),
      // GoRoute(
      //   path: signinView,
      //   builder: (context, state) => const SigninView(),
      // ),
      // GoRoute(
      //   path: signupView,
      //   builder: (context, state) => const SignupView(),
      // ),
      // GoRoute(
      //   path: homeView,
      //   builder: (context, state) => const HomeView(),
      // ),
      // GoRoute(
      //   // name: bestSelling,
      //   path: bestSelling,
      //   builder: (context, state) => const BestSellingView(),
      // ),
      // GoRoute(
      //     path: kBookDetailsView,
      //     builder: (context, state) => BlocProvider(
      //       create: (context) =>
      //           RelatedBooksCubit(homeRepo: getit.get<HomeRepoImpl>()),
      //       child: BookDetailsView(
      //         book: state.extra as Item,
      //       ),
      //     ),
      //   ),
    ],
  );
}
