import 'package:gontodomobile/constants/assets.dart';
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
    if (imageNumber < Images.intro.length - 1) {
      imageNumber++;
      // return;
    } else if (imageNumber >= Images.intro.length) {
      goToLogin();
    }
  }

  @action
  void goToLogin() {}

  @action
  void backImage() {
    if (imageNumber > 0) {
      imageNumber--;
    }
  }

  @computed
  bool get isComplete => imageNumber >= Images.intro.length - 1;

  @computed
  String get buttonText => isComplete ? "GET STARTED" : "NEXT";

  @computed
  String get getImage => Images.intro[imageNumber];

  @computed
  String get getTitle => title[imageNumber];

  @computed
  String get getContent => content[imageNumber];
}
