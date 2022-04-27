import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import '../../model/screen.dart';
import '../../widget/scaffold/scaffold.dart';
import 'home.dart';

const homeTitle = 'Início';
const homePath = 'home';

class HomeRoute extends NuRoute implements Screen {
  @override
  String get title => homeTitle;

  @override
  String get path => homePath;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return BaseScaffold(
      body: Home(),
      title: title,
    );
  }
}

class HomeRouter extends NuRouter {
  @override
  String get initialRoute => homePath;

  @override
  List<NuRoute> get registerRoutes => [
        HomeRoute(),
      ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: HomeRouter(),
  );
}
