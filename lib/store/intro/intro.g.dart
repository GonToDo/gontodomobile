// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Intro on IntroBase, Store {
  Computed<bool>? _$isDoneComputed;

  @override
  bool get isDone => (_$isDoneComputed ??=
          Computed<bool>(() => super.isDone, name: 'IntroBase.isDone'))
      .value;
  Computed<String>? _$buttonTextComputed;

  @override
  String get buttonText =>
      (_$buttonTextComputed ??= Computed<String>(() => super.buttonText,
              name: 'IntroBase.buttonText'))
          .value;

  late final _$imageNumberAtom =
      Atom(name: 'IntroBase.imageNumber', context: context);

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

  late final _$IntroBaseActionController =
      ActionController(name: 'IntroBase', context: context);

  @override
  void nextImage() {
    final _$actionInfo =
        _$IntroBaseActionController.startAction(name: 'IntroBase.nextImage');
    try {
      return super.nextImage();
    } finally {
      _$IntroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageNumber: ${imageNumber},
isDone: ${isDone},
buttonText: ${buttonText}
    ''';
  }
}
