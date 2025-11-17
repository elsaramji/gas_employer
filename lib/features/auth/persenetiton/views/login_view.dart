import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_employer/core/constant/app_assets.dart';

import '../../../../generated/l10n.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final text = S.of(context);
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // spacing: 32.h,
            children: [
              SizedBox(height: 72.h),
          
              Center(
                child: Image.asset(
                  AppAssets.logo,
                  width: 124.sp,
                  height: 124.sp,
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Text(text.app_name, style: textTheme.headlineLarge),
              ),
              SizedBox(height: 172.h),
              Text(text.login_with_phone, style: textTheme.headlineMedium),
              SizedBox(height: 4.h),
              Form(
                //autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formKey,
          
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return text.enter_phone;
                    } else if (value.length < 11) {
                      return text.enter_valid_phone;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: text.phone,
          
                    prefixIcon: Container(
                      width: 32.w,
                      alignment: Alignment.center,
                      child: Text("+2", style: textTheme.headlineMedium),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Row(
          spacing: 16.w,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
                child: Text(text.login_with_phone),
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.fingerprint_rounded)),
          ],
        ),
      ),
    );
  }
}
