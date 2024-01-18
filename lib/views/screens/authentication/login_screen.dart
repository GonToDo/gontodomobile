import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gontodomobile/constants/assets.dart';
import 'package:gontodomobile/core/base_screen.dart';
import 'package:gontodomobile/routes.dart';

class LoginScreen extends BasePageScreen {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends BasePageScreenState<LoginScreen>
    with BaseScreen {
  @override
  void initState() {
    super.initState();
  }

  // var introController = IntroController();

  @override
  Widget body() {
    return Center(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12.sp, top: 24.sp, bottom: 20.sp),
              child: GestureDetector(
                onTap: () {
                  Routes.backScreen(context);
                },
                child: SvgPicture.asset(
                  AppIcons.back,
                  width: 30.sp,
                  height: 30.sp,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18.sp),
            alignment: Alignment.centerLeft,
            child: Text(
              "Login",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}
