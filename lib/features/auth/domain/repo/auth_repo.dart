import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/failure/failures.dart';
import 'package:e_commerce/features/auth/domain/entities/user_entity.dart';

// method  with email and password1
abstract class AuthRepo {
  Future<Either<Failures, UserEntity>> createUserwithEmailAndPassword({
    required String email,
    required String password,
  });
}
