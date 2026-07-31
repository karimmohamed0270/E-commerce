import 'package:e_commerce/features/auth/data/auth_repo_imp.dart';
import 'package:e_commerce/features/auth/domain/repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(firebaseAuth: getIt<FirebaseAuth>()),
  );
}
