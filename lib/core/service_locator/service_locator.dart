import 'package:anime_rank/core/repository/auth/auth_repository.dart';
import 'package:anime_rank/core/repository/auth/auth_repository_interface.dart';
import 'package:anime_rank/pages/login/login_cubit.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static Future<void> setup() async {
    final i = GetIt.instance;

    //glogal cubit
    i.registerLazySingleton<IAuthRepository>(() => AuthRepository());

    //page cubits
    i.registerFactory(() => LoginCubit(i.get()));
  }
}
