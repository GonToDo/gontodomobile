import 'package:flutter/material.dart';
import 'package:gontodomobile/constants/assets.dart';
import 'package:gontodomobile/routes.dart';
import 'package:mobx/mobx.dart';
part 'intro_controller.g.dart';

class IntroController = IntroControllerBase with _$IntroController;

abstract class IntroControllerBase with Store {
  static const title = [
    "Manage your tasks",
    "Create daily routine",
    "Orgonaize your tasks"
  ];
  static const content = [
    "You can easily manage all of your daily tasks in DoMe for free",
    "In Uptodo  you can create your personalized routine to stay productive",
    "You can organize your daily tasks by adding your tasks into separate categories"
  ];

  @observable
  int imageNumber = 0;

  @action
  void nextImage() {
    if (imageNumber < AppImages.intro.length - 1) {
      imageNumber++;
    }
  }

  @action
  void goToStartScreen(BuildContext context) {
    Routes.toScreen(context, Routes.start);
  }

  @action
  void backImage() {
    if (imageNumber > 0) {
      imageNumber--;
    }
  }

  @computed
  bool get isComplete => imageNumber >= AppImages.intro.length - 1;

  @computed
  String get buttonText => isComplete ? "GET STARTED" : "NEXT";

  @computed
  String get getImage => AppImages.intro[imageNumber];

  @computed
  String get getTitle => title[imageNumber];

  @computed
  String get getContent => content[imageNumber];
}
