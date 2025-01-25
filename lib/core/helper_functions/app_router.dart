
import 'package:go_router/go_router.dart';
import 'package:one_box/features/Auth/presentation/views/login_view.dart';
import 'package:one_box/features/Home/presentation/views/master_screen.dart';
import 'package:one_box/features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const login = '/login';
  static const masterScreen='/masterScreen';

  // static final splashScreen = '/splash';
  static final roter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: masterScreen,
        builder: (context, state) =>  MasterScreen(),
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
