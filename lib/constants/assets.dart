// ignore_for_file: prefer_interpolation_to_compose_strings

const String assetsPart = "assets/";
const String imagesPart = assetsPart + "images/";
const String iconsPart = assetsPart + "icons/";

class AppImages {
  AppImages._();

  static const intro = [
    imagesPart + "intro_1.png",
    imagesPart + "intro_2.png",
    imagesPart + "intro_3.png"
  ];
}

class AppIcons {
  AppIcons._();

  static const back = iconsPart + "arrow-left.svg";
}
