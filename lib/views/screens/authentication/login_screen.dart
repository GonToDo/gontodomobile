import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gontodomobile/constants/assets.dart';
import 'package:gontodomobile/core/base_screen.dart';
import 'package:gontodomobile/routes.dart';
import 'package:gontodomobile/views/widgets/base_text_field.dart';
import 'package:gontodomobile/views/widgets/primary_button.dart';

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
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.sp),
            child: BaseTextField(
              title: "UserName",
              hintText: 'Enter your Username',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.sp),
            child: BaseTextField(
              title: "Password",
              hintText: '• • • • • • • • • • • •',
            ),
          ),
          Expanded(flex: 4, child: Container()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.sp),
            child: PrimaryButton(
              onPressed: () {},
              text: 'Login',
              height: 46.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
                ),
                GestureDetector(
                  onTap: () {
                    print("Register");
                  },
                  child: Text(
                    "Register",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
