import 'package:eduardos_investment_app/screen/expense/expense.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import '../../model/screen.dart';
import '../../widget/scaffold/scaffold.dart';

const expenseTitle = 'Despesas';
const expensePath = 'expense';

class ExpenseRoute extends NuRoute implements Screen {
  @override
  String get title => expenseTitle;

  @override
  String get path => expensePath;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return BaseScaffold(
      body: Expense(),
      title: title,
    );
  }
}

class ExpenseRouter extends NuRouter {
  @override
  String get initialRoute => expensePath;

  @override
  List<NuRoute> get registerRoutes => [
        ExpenseRoute(),
      ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: ExpenseRouter(),
  );
}
