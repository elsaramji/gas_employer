import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_employer/core/constant/app_assets.dart';
import 'package:gas_employer/core/di/di.dart';
import 'package:gas_employer/core/routes/routes.dart';
import 'package:gas_employer/core/themes/colors/app_colors.dart';
import 'package:gas_employer/features/auth/persenetiton/login/login_cubit.dart';
import 'package:gas_employer/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyLogin extends StatefulWidget {
  final String verificationId;

  const VerifyLogin({super.key, required this.verificationId});

  @override
  State<VerifyLogin> createState() => _VerifyLoginState();
}

class _VerifyLoginState extends State<VerifyLogin> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String otp = "";

  @override
  Widget build(BuildContext context) {
    final text = S.of(context);
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => context.pop(),
          ),
        ),
        body: Builder(
          builder: (context) {
            return BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is VerifyLoadingSuccess) {
                  context.push(AppRoutesNamed.home);
                }
                if (state is LoginError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.error),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.h),
            
                    /// Logo
                    Center(
                      child: Container(
                        height: 70.w,
                        width: 70.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.secondary,
                        ),
                        child: Center(
                          child: Image.asset(
                            AppAssets.logo,
                            height: 50.w,
                            width: 50.w,
                          ),
                        ),
                      ),
                    ),
            
                    SizedBox(height: 30.h),
            
                    /// Title
                    Text(
                      text.otp_verified,
                      style: textTheme.headlineMedium?.copyWith(
                        color: AppColors.onBackground,
                      ),
                    ),
            
                    SizedBox(height: 8.h),
                    Text(
                      "Enter the OTP sent to your mobile number to\nverify your account.",
                      textAlign: TextAlign.center,
                      style: textTheme.bodyMedium?.copyWith(
                        color: AppColors.onSecondary,
                      ),
                    ),
            
                    SizedBox(height: 35.h),
                    Form(
                      key: formKey,
                      child: PinCodeTextField(
                        textStyle: textTheme.labelMedium?.copyWith(
                          color: AppColors.onSecondary,
                        ),
                        validator: (value) {
                          if (value!.length < 6) {
                            return text.otp_not_verified;
                          } else {
                            return null;
                          }
                        },
                        appContext: context,
                        length: 6,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          otp = value;
                        },
            
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8.r),
                          fieldHeight: 55.w,
                          fieldWidth: 45.w,
            
                          inactiveColor: AppColors.onSecondary,
                          activeColor: AppColors.primary,
                          selectedColor: AppColors.primary,
                        ),
                      ),
                    ),
            
                    SizedBox(height: 16.h),
            
                    /// Resend Code
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "didn't receive the code?",
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColors.onSecondary,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            text.resend_code,
                            style: textTheme.bodyMedium?.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
            
                    SizedBox(height: 24.h),
            
                    /// Verify Button
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate() && otp.length == 6) {
                          log(otp);
                          log(widget.verificationId);
            
                          context.read<LoginCubit>().verifyLogin(
                            otp,
                            widget.verificationId,
                          );
                        }
                      },
                      child: Text(text.verify),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
