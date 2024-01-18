import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

abstract class BasePageScreen extends StatefulWidget {
  const BasePageScreen({Key? key}) : super(key: key);
}

abstract class BasePageScreenState<Page extends BasePageScreen>
    extends State<Page> {}

mixin BaseScreen<Page extends BasePageScreen> on BasePageScreenState<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Observer(builder: (_) {
          return SafeArea(
            child: body(),
          );
        }));
  }

  Widget body();
}
