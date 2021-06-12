import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/features/budget/presentation/widgets/grid_button.dart';

List<Widget> gridButtons = [
  GridButton(
    text: 'Groceries',
    amount: '40',
    color: Colors.blue.shade500,
    shade: Colors.blue.shade100,
    currentValue: 70,
  ),
  GridButton(
    text: 'Family',
    amount: '1000',
    color: Colors.pink.shade500,
    shade: Colors.pink.shade100,
    currentValue: 70,
  ),
  GridButton(
    text: 'Kids',
    amount: '35',
    color: Colors.green.shade500,
    shade: Colors.green.shade100,
    currentValue: 35,
  ),
  GridButton(
    text: 'Clothing',
    amount: '235',
    color: Colors.orange.shade500,
    shade: Colors.orange.shade100,
    currentValue: 50,
  ),
];
