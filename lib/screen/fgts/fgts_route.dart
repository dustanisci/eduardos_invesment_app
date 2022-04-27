import 'package:eduardos_investment_app/screen/fgts/fgts.dart';
import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import '../../model/screen.dart';
import '../../widget/scaffold/scaffold.dart';

const fgtsTitle = 'Despesas';
const fgtsPath = 'expense';

class FgtsRoute extends NuRoute implements Screen {
  @override
  String get title => fgtsTitle;

  @override
  String get path => fgtsPath;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return BaseScaffold(
      body: Fgts(),
      title: title,
    );
  }
}

class FgtsRouter extends NuRouter {
  @override
  String get initialRoute => fgtsPath;

  @override
  List<NuRoute> get registerRoutes => [
        FgtsRoute(),
      ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: FgtsRouter(),
  );
}
