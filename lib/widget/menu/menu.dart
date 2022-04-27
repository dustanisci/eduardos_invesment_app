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
import '../../model/menu.dart' as model;

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        children: _items
            .map(
              (item) => ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22.0),
                  child: Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                onTap: () async {
                  final nuvigator = Nuvigator.of(context);
                  await nuvigator.open<Object>('nuapp://' + item.path);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}

final List<model.Menu> _items = [
  model.Menu(
    title: homeTitle,
    path: homePath,
  ),
  model.Menu(
    title: rendaFixaTitle,
    path: rendaFixaPath,
  ),
  model.Menu(
    title: rendaVariavelTitle,
    path: rendaVariavelPath,
  ),
  model.Menu(
    title: goalsTitle,
    path: goalsPath,
  ),
  model.Menu(
    title: gainsTitle,
    path: gainsPath,
  ),
  model.Menu(
    title: expenseTitle,
    path: expensePath,
  ),
  model.Menu(
    title: digitalAccountTitle,
    path: digitalAccountPath,
  ),
  model.Menu(
    title: fgtsTitle,
    path: fgtsPath,
  ),
];
