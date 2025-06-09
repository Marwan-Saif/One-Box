import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/services/getit_service.dart';
import 'package:one_box/core/views/products_view.dart';
import 'package:one_box/features/Auth/domain/auth_repo.dart';
import 'package:one_box/features/Auth/presentation/manager/auth_cubit.dart';
import 'package:one_box/features/Auth/presentation/views/login_view.dart';
import 'package:one_box/features/Auth/presentation/views/otp_screen.dart';
import 'package:one_box/features/Home/domain/categories_repo.dart';
import 'package:one_box/features/Home/presentation/manager/categores_cubit/categories_cubit.dart';
import 'package:one_box/features/Home/presentation/views/master_screen.dart';
import 'package:one_box/features/Home/presentation/views/supcategory_view.dart';
import 'package:one_box/features/Splash/presentation/views/splash_view.dart';
import 'package:one_box/features/cart/presentaion/views/aucation_product.dart';
import 'package:one_box/features/cart/presentaion/views/normal_product.dart';

abstract class AppRouter {
  static const login = '/login';
  static const otpScreen = '/otpScreen';
  static const masterScreen = '/masterScreen';
  static const normalProduct = '/normalProduct';
  static const aucationProduct = '/aucationProduct';
  static const supCategoryView = '/supCategoryView';
  static const productsView = '/productsView';

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
      GoRoute(
        path: productsView,
        builder: (context, state) => const ProductsView(),
      ),
      GoRoute(
          path: supCategoryView,
          builder: (context, state) {
            final args = state.extra as Map;
            final int id = args['id'] ?? 4;

            final String title = args['title'] ?? 'Unknown';
            final String imageUrl = args['imageUrl'] ?? '';

            return BlocProvider(
              create: (context) => CategoriesCubit(getit.get<CategoriesRepo>()),
              child: SupCategoryView(
                id: id,
                image: imageUrl,
                title: title,
              ),
            );
          }),
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
