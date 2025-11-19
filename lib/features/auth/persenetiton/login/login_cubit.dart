import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:gas_employer/core/di/di.dart';
import 'package:gas_employer/features/auth/domain/usecases/login_with_phone_usecase.dart';
import 'package:gas_employer/features/auth/domain/usecases/verfiy_phon_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void login(String phone) async {
    LoginWithPhoneUsecase loginWithPhoneUsecase =
        getIt<LoginWithPhoneUsecase>();
    emit(LoginLoading());
    final result = await loginWithPhoneUsecase.call(phone);
    result.fold(
      (l) {
        log("error: ${l.message} in cubit");
        return emit(LoginError(l.message));
      },
      (r) {
        log("success: $r in cubit");
        return emit(LoginSuccess(r));
      },
    );
  }

  void verifyLogin(String code, String? verifyId) async {
    VerfiyPhonUsecase verfiyPhonUsecase = getIt<VerfiyPhonUsecase>();
    emit(LoginLoading());
    final result = await verfiyPhonUsecase.call(code, verifyId);
    result.fold(
      (l) {
        log("error: ${l.message} in cubit");
        return emit(LoginError(l.message));
      },
      (r) {
        return emit(VerifyLoadingSuccess());
      },
    );
  }
}
