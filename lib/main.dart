import 'package:eduardos_investment_app/screen/digital_account/digital_account_route.dart';
import 'package:eduardos_investment_app/screen/expense/expense_route.dart';
import 'package:eduardos_investment_app/screen/fgts/fgts_route.dart';
import 'package:eduardos_investment_app/screen/gains/gains_route.dart';
import 'package:eduardos_investment_app/screen/goals/goals_route.dart';
import 'package:eduardos_investment_app/screen/home/home_route.dart';
import 'package:eduardos_investment_app/screen/renda_fixa/renda_fixa_route.dart';
import 'package:eduardos_investment_app/screen/renda_variavel/renda_variavel_route.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

void main() {
  runApp(const MainRouters());
}

class MainRouters extends StatelessWidget {
  const MainRouters({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: Nuvigator(
        router: NuRouterBuilder(
          initialRoute: homePath,
          routes: [
            HomeRoute(),
            DigitalAccountRoute(),
            ExpenseRoute(),
            FgtsRoute(),
            GainsRoute(),
            GoalsRoute(),
            RendaFixaRoute(),
            RendaVariavelRoute(),
          ],
        ),
      ),
    );
  }
}
