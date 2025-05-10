import 'package:get_it/get_it.dart';
import 'package:one_box/core/services/api_services.dart';
import 'package:one_box/features/Auth/data/repo/auth_repo_impl.dart';
import 'package:one_box/features/Auth/domain/auth_repo.dart';

final getit = GetIt.instance;

void setUpServiceLocator() {
  getit.registerSingleton<ApiService>(ApiService());
  getit.registerSingleton<AuthRepo>(
      AuthRepoImpl(apiService: getit.get<ApiService>()));
  // getit.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  // getit.registerSingleton<DatabaseService>(FireStoreService());
  // getit.registerSingleton<AuthRepo>(
  //     AuthRepoImpl(getit.get<FirebaseAuthServices>(), getit.get<DatabaseService>()));
  // getit.registerSingleton<ApiServices>(ApiServices(Dio()));
  // getit.registerSingleton<SearchRepoImpl>(SearchRepoImpl(apiServices: ApiServices(Dio())));

  // getit.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getit.get<ApiServices>()));
}
