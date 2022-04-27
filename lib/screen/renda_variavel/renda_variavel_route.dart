import 'package:eduardos_investment_app/screen/renda_variavel/renda_variavel.dart';
import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import '../../model/screen.dart';
import '../../widget/scaffold/scaffold.dart';

const rendaVariavelTitle = 'Renda variável';
const rendaVariavelPath = 'renda-variavel';

class RendaVariavelRoute extends NuRoute implements Screen {
  @override
  String get title => rendaVariavelTitle;

  @override
  String get path => rendaVariavelPath;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return BaseScaffold(
      body: RendaVariavel(),
      title: title,
    );
  }
}

class RendaVariavelRouter extends NuRouter {
  @override
  String get initialRoute => rendaVariavelPath;

  @override
  List<NuRoute> get registerRoutes => [
    RendaVariavelRoute(),
  ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: RendaVariavelRouter(),
  );
}
