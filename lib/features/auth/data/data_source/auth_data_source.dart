import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gas_employer/core/constant/errors/application_errors.dart';
import 'package:injectable/injectable.dart';

abstract interface class AuthDataSource {
  Future<Either<ApplicationErrors, String>> login_with_phone(String phone);
  Future<Either<ApplicationErrors, void>> verify_login(
    String code,
    String? verifyId,
  );
}

class FirebaseAuthError {}

@Injectable(as: AuthDataSource)
class AuthDataSourceFirebaseImpl implements AuthDataSource {
  @override

Future<Either<ApplicationErrors, String>> login_with_phone(String phone) async {
  final auth = FirebaseAuth.instance;
  final completer = Completer<Either<ApplicationErrors, String>>();

  try {
    await auth.verifyPhoneNumber(
      phoneNumber: phone,

      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },

      verificationFailed: (FirebaseAuthException e) {
        if (!completer.isCompleted) {
          completer.complete(
            left(ApplicationErrors(message: e.message ?? "Firebase Error")),
          );
        }
      },

      codeSent: (String verificationId, int? resendToken) {
        if (!completer.isCompleted) {
          completer.complete(right(verificationId));
        }
      },

      codeAutoRetrievalTimeout: (String verificationId) {
        if (!completer.isCompleted) {
          completer.complete(right(verificationId));
        }
      },

      timeout: const Duration(seconds: 60),
    );

    return await completer.future;
  } catch (e) {
    if (!completer.isCompleted) {
      completer.complete(
        left(ApplicationErrors(message: e.toString())),
      );
    }
    return await completer.future;
  }
}

/*
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phone,

        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },

        verificationFailed: (FirebaseAuthException e) {
          error = ApplicationErrors(message: e.message ?? "Firebase error 0");
          firebaseError = FirebaseAuthError();
          if (!completer.isCompleted) {
            completer.completeError(firebaseError!);
          }
        },

        codeSent: (String verificationId, int? resendToken) {
          if (!completer.isCompleted) {
            completer.complete(verificationId);
          }
        },

        codeAutoRetrievalTimeout: (String verificationId) {
          if (!completer.isCompleted) {
            completer.complete(verificationId);
          }
        },

        timeout: const Duration(seconds: 60),
      );

      final result = await completer.future;
      if (!completer.isCompleted && result is FirebaseAuthError) {
        log("result: $result 1error");
        return left(error!);
      } else if (completer.isCompleted && result is String) {
        log("result: $result ++");
        return right(result);
      } else {
        return left(error!);
      }
    } catch (e) {
      error = ApplicationErrors(message: e.toString());
      firebaseError = FirebaseAuthError();
      if (!completer.isCompleted) {
        completer.completeError(firebaseError!);
        return left(error!);
      }
      return left(ApplicationErrors(message: e.toString()));
    }
  }*/


  /*
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) {
          auth.signInWithCredential(credential);
        },

        timeout: Duration(seconds: 60),
        verificationFailed: (FirebaseAuthException e) {
          log(e.message!);
          error = ApplicationErrors(message: e.message!);
        },
        codeSent: (String verificationId, int? resendToken) {
          log(verificationId);
          verifyId ??= verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          log(verificationId);
          verifyId ??= verificationId;
        },
      );
      if (verifyId != null) {
        log('code: $verifyId, phone: $phone');
        return right(verifyId!);
      }
    } catch (e) {
      log(e.toString());
      error = ApplicationErrors(message: e.toString());
    }
    if (error != null) {
      return left(error!);
    } else {
      return right(verifyId!);
    }
  }*/

  @override
  Future<Either<ApplicationErrors, void>> verify_login(
    String code,
    String? verifyId,
  ) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verifyId!,
        smsCode: code,
      );
      FirebaseAuth.instance.signInWithCredential(credential);
      return right(null);
    } on Exception catch (e) {
      return left(ApplicationErrors(message: e.toString()));
    }
  }
}
