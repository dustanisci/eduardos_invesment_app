import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import '../../model/screen.dart';
import '../../widget/scaffold/scaffold.dart';
import 'digital_account.dart';

const digitalAccountTitle = 'Conta digital';
const digitalAccountPath = 'digital-account';

class DigitalAccountRoute extends NuRoute implements Screen {
  @override
  String get title => digitalAccountTitle;

  @override
  String get path => digitalAccountPath;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return BaseScaffold(
      body: DigitalAccount(),
      title: title,
    );
  }
}

class DigitalAccountRouter extends NuRouter {
  @override
  String get initialRoute => digitalAccountPath;

  @override
  List<NuRoute> get registerRoutes => [
        DigitalAccountRoute(),
      ];
}

Widget build(BuildContext context) {
  return Nuvigator(
    router: DigitalAccountRouter(),
  );
}
