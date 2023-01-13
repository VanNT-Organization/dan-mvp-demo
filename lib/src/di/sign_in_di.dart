import 'package:get_it/get_it.dart';
import 'package:mvp/src/data/repositories/sign_in_repository.dart';
import 'package:mvp/src/data/service/sign_in_service.dart';
import 'package:mvp/src/data/sources/remote/sign_in_remote_data_source.dart';
import 'package:mvp/src/domain/usecase/sign_in/sign_in_usecase.dart';
import 'package:mvp/src/presentation/cubit/sign_in/sign_in_cubit.dart';

void registerDI() {
  final sl = GetIt.instance;
  // Services
  sl.registerLazySingleton<SignInService>(() => SignInService(
      sl.get(),
      baseUrl: sl.get<String>()));

  // Data sources
  sl.registerLazySingleton<SignInRemoteDataSource>(
        () => SignInRemoteDataSourceImpl(
      signInService: sl.get(),
    ),
  );
  // Repositories
  sl.registerLazySingleton<SignInRepository>(
        () => SignInRepositoryImpl(
      signInRemoteDataSource: sl.get(),
    ),
  );
  // UseCases
  sl.registerLazySingleton(() => SignInUseCase(signInRepository: sl.get()));

  //bloc
  sl.registerFactory(() => SignInCubit(signInUseCase: sl.get()));
}
