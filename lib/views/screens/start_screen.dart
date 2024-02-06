import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gontodomobile/constants/assets.dart';
import 'package:gontodomobile/core/base_screen.dart';
import 'package:gontodomobile/routes.dart';
import 'package:gontodomobile/views/widgets/primary_button.dart';

class StartScreen extends BasePageScreen {
  const StartScreen({super.key});

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends BasePageScreenState<StartScreen>
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
                padding:
                    EdgeInsets.only(left: 12.sp, top: 24.sp, bottom: 20.sp),
                child: GestureDetector(
                  onTap: () {
                    Routes.toScreen(context, Routes.intro);
                  },
                  child: SvgPicture.asset(
                    AppIcons.back,
                    width: 30.sp,
                    height: 30.sp,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.sp),
            child: Text(
              "Welcome to UpTodo",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.sp),
            child: Text(
              textAlign: TextAlign.center,
              "Please login to your account or create new account to continue",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.sp),
            child: PrimaryButton(
              onPressed: () {
                Routes.toScreen(context, Routes.login);
              },
              text: 'Login',
              height: 46.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 32.sp, right: 32.sp, bottom: 24.sp, top: 12),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    width: 2.sp,
                    color: Theme.of(context).colorScheme.onPrimary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.sp),
                ),
              ),
              onPressed: () {},
              child: Container(
                width: double.infinity,
                height: 48.sp,
                alignment: Alignment.center,
                child: Text(
                  "Create account",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
