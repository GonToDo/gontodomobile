// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IntroController on IntroControllerBase, Store {
  Computed<bool>? _$isCompleteComputed;

  @override
  bool get isComplete =>
      (_$isCompleteComputed ??= Computed<bool>(() => super.isComplete,
              name: 'IntroControllerBase.isComplete'))
          .value;
  Computed<String>? _$buttonTextComputed;

  @override
  String get buttonText =>
      (_$buttonTextComputed ??= Computed<String>(() => super.buttonText,
              name: 'IntroControllerBase.buttonText'))
          .value;
  Computed<String>? _$getImageComputed;

  @override
  String get getImage =>
      (_$getImageComputed ??= Computed<String>(() => super.getImage,
              name: 'IntroControllerBase.getImage'))
          .value;
  Computed<String>? _$getTitleComputed;

  @override
  String get getTitle =>
      (_$getTitleComputed ??= Computed<String>(() => super.getTitle,
              name: 'IntroControllerBase.getTitle'))
          .value;
  Computed<String>? _$getContentComputed;

  @override
  String get getContent =>
      (_$getContentComputed ??= Computed<String>(() => super.getContent,
              name: 'IntroControllerBase.getContent'))
          .value;

  late final _$imageNumberAtom =
      Atom(name: 'IntroControllerBase.imageNumber', context: context);

  @override
  int get imageNumber {
    _$imageNumberAtom.reportRead();
    return super.imageNumber;
  }

  @override
  set imageNumber(int value) {
    _$imageNumberAtom.reportWrite(value, super.imageNumber, () {
      super.imageNumber = value;
    });
  }

  late final _$IntroControllerBaseActionController =
      ActionController(name: 'IntroControllerBase', context: context);

  @override
  void nextImage() {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.nextImage');
    try {
      return super.nextImage();
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void goToStartScreen(BuildContext context) {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.goToStartScreen');
    try {
      return super.goToStartScreen(context);
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void backImage() {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.backImage');
    try {
      return super.backImage();
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageNumber: ${imageNumber},
isComplete: ${isComplete},
buttonText: ${buttonText},
getImage: ${getImage},
getTitle: ${getTitle},
getContent: ${getContent}
    ''';
  }
}
