import 'package:eduardos_investment_app/screen/goals/goals.dart';
import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import '../../model/screen.dart';
import '../../widget/scaffold/scaffold.dart';

const goalsTitle = 'Objetivos';
const goalsPath = 'goals';

class GoalsRoute extends NuRoute implements Screen {
  @override
  String get title => goalsTitle;

  @override
  String get path => goalsPath;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return BaseScaffold(
      body: Goals(),
      title: title,
    );
  }
}

class GoalsRouter extends NuRouter {
  @override
  String get initialRoute => goalsPath;

  @override
  List<NuRoute> get registerRoutes => [
        GoalsRoute(),
      ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: GoalsRouter(),
  );
}
