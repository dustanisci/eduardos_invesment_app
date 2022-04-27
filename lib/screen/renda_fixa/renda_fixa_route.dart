import 'package:eduardos_investment_app/screen/renda_fixa/renda_fixa.dart';
import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import '../../model/screen.dart';
import '../../widget/scaffold/scaffold.dart';

const rendaFixaTitle = 'Renda fixa';
const rendaFixaPath = 'renda-fixa';

class RendaFixaRoute extends NuRoute implements Screen {
  @override
  String get title => rendaFixaTitle;

  @override
  String get path => rendaFixaPath;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return BaseScaffold(
      body: RendaFixa(),
      title: title,
    );
  }
}

class RendaFixaRouter extends NuRouter {
  @override
  String get initialRoute => rendaFixaPath;

  @override
  List<NuRoute> get registerRoutes => [
        RendaFixaRoute(),
      ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: RendaFixaRouter(),
  );
}
