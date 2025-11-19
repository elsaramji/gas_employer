import 'package:dartz/dartz.dart';
import 'package:gas_employer/core/constant/errors/application_errors.dart';

abstract class AuthRepo {
  Future<Either<ApplicationErrors, String>> login(String phone);

  Future<Either<ApplicationErrors, void>> verify_login(
    String code,
    String? verifyId,
  );
}
