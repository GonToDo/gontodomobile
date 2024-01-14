import 'package:mobx/mobx.dart';
part 'intro.g.dart';

class Intro = IntroBase with _$Intro;

abstract class IntroBase with Store {
  @observable
  int imageNumber = 0;

  @action
  void nextImage() {
    if (!isDone) {
      imageNumber++;
      return;
    }
  }

  @computed
  bool get isDone => imageNumber >= 3;

  @computed
  String get buttonText => isDone ? "GET STARTED" : "NEXT";
}
