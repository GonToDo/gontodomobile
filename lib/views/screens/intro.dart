import 'package:flutter/material.dart';
import 'package:gontodomobile/core/base_screen.dart';
import 'package:gontodomobile/store/intro/intro.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends BasePageScreen {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BasePageScreenState<HomeScreen> with BaseScreen {
  @override
  void initState() {
    super.initState();
  }

  var intro = Intro();

  @override
  Widget body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "SKIP",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Observer(builder: (_) {
          return Text(
            "${intro.imageNumber}",
          );
        }),
        ElevatedButton(
          onPressed: () {
            intro.nextImage();
          },
          child: Observer(builder: (_) {
            return Text("${intro.buttonText}");
          }),
        )
      ],
    );
  }
}
