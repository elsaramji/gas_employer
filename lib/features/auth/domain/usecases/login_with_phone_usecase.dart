import 'package:dartz/dartz.dart';
import 'package:gas_employer/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constant/errors/application_errors.dart';
@injectable
class LoginWithPhoneUsecase {
  final AuthRepo authRepo;
  LoginWithPhoneUsecase(this.authRepo);

  Future<Either<ApplicationErrors, String>> call(String phone)async =>
     await authRepo.login(phone);
}
