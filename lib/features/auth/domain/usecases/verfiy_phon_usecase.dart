import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constant/errors/application_errors.dart';
import '../repo/auth_repo.dart';

@injectable
class VerfiyPhonUsecase {
  final AuthRepo authRepo;
  VerfiyPhonUsecase(this.authRepo);

  Future<Either<ApplicationErrors, void>> call(
    String code,
    String? verifyId,
  ) async => await authRepo.verify_login(code, verifyId);
}
