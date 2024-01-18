import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontodomobile/constants/assets.dart';
import 'package:gontodomobile/core/base_screen.dart';
import 'package:gontodomobile/controllers/intro_controller.dart';
import 'package:gontodomobile/views/widgets/primary_button.dart';

class IntroScreen extends BasePageScreen {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends BasePageScreenState<IntroScreen>
    with BaseScreen {
  @override
  void initState() {
    super.initState();
  }

  var introController = IntroController();

  @override
  Widget body() {
    return Center(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12.sp, top: 24.sp),
              child: GestureDetector(
                onTap: () {
                  introController.goToStartScreen(context);
                },
                child: Text(
                  "SKIP",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
                ),
              ),
            ),
          ),
          Image.asset(
            height: 250.sp,
            introController.getImage,
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var i = 0; i < AppImages.intro.length; i++)
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.sp, horizontal: 2.sp),
                    child: Container(
                      height: 4.sp,
                      width: 20.sp,
                      decoration: BoxDecoration(
                        color: i == introController.imageNumber
                            ? Theme.of(context).colorScheme.secondary
                            : Theme.of(context).colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(4.sp),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.sp),
            child: Text(
              introController.getTitle,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.sp),
            child: Text(
              textAlign: TextAlign.center,
              introController.getContent,
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
            padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 24.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    introController.backImage();
                  },
                  child: Text(
                    "BACK",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.tertiary),
                  ),
                ),
                PrimaryButton(
                    text: introController.buttonText,
                    onPressed: () => introController.isComplete
                        ? introController.goToStartScreen(context)
                        : introController.nextImage()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
