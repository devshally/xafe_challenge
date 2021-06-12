import 'package:xafe_challenge/app/core/models/recent_transactions.dart';

final transaction1 = Transaction(
  amount: '\$500',
  emoji: '📃',
  transaction: 'Bill Payments',
);
final transaction2 = Transaction(
  amount: '\$500',
  emoji: '💸',
  transaction: 'Transfers',
);
final transaction3 = Transaction(
  amount: '\$500',
  emoji: '🍗',
  transaction: 'Food',
);
final transaction4 = Transaction(
  amount: '\$500',
  emoji: '💳',
  transaction: 'Card payments',
);

List<Transaction> transactions = [
  transaction1,
  transaction2,
  transaction3,
  transaction4,
];

List<String> menuItems = [
  'Add an Expense',
  'Edit budget',
  'Delete budget',
];
