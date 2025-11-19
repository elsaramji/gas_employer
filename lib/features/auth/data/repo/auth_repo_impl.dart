import 'package:dartz/dartz.dart';
import 'package:gas_employer/core/constant/errors/application_errors.dart';
import 'package:gas_employer/features/auth/data/data_source/auth_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repo/auth_repo.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthDataSource authDataSource;
  AuthRepoImpl(this.authDataSource);
  @override
  Future<Either<ApplicationErrors, String>> login(String phone) async {
    final result = await authDataSource.login_with_phone(phone);
    return result.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<ApplicationErrors, void>> verify_login(
    String code,
    String? verifyId,
  ) async {
    try {
      await authDataSource.verify_login(code, verifyId);
      return right(null);
    } catch (e) {
      return left(ApplicationErrors(message: e.toString()));
    }
  }
}
