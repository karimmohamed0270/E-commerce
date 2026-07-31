import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/exceptions.dart';
import 'package:e_commerce/core/failure/failures.dart';
import 'package:e_commerce/features/auth/domain/entities/user_entity.dart';
import 'package:e_commerce/features/auth/domain/repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp implements AuthRepo {
  final FirebaseAuth firebaseAuth;
  AuthRepoImp({required this.firebaseAuth});

  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      final credential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return Right(
        UserEntity(uid: credential.user!.uid, email: email, username: username),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور ضعيفة جداً.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'البريد الإلكتروني مستخدم بالفعل.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من اتصالك بالإنترنت.');
      } else {
        throw CustomException(message: 'حدث خطأ ما.');
      }
    } catch (e) {
      // throw CustomException(message: 'حدث خطأ غير متوقع.');
      return Left(ServerFailures(message: e.toString()));
    }
  }
}
