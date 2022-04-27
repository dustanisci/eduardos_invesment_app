import 'package:eduardos_investment_app/screen/gains/gains.dart';
import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import '../../model/screen.dart';
import '../../widget/scaffold/scaffold.dart';

const gainsTitle = 'Ganhos';
const gainsPath = 'gains';

class GainsRoute extends NuRoute implements Screen {
  @override
  String get title => gainsTitle;

  @override
  String get path => gainsPath;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return BaseScaffold(
      body: Gains(),
      title: title,
    );
  }
}

class GainsRouter extends NuRouter {
  @override
  String get initialRoute => gainsPath;

  @override
  List<NuRoute> get registerRoutes => [
        GainsRoute(),
      ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: GainsRouter(),
  );
}
