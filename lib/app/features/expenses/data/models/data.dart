import 'package:xafe_challenge/app/features/expenses/data/models/expense.dart';

final expenseHistory1 = Expense('Celery', '\$14.99', '🍗', '03/12/20');
final expenseHistory2 = Expense('Tomatoes', '\$14.99', '🍗', '03/12/20');
final expenseHistory3 = Expense('Milk & Sugar', '\$14.99', '🍗', '03/12/20');
final expenseHistory4 = Expense('Uber Fares', '\$14.99', '✈️', '03/12/20');

List<Expense> expenses = [
  expenseHistory1,
  expenseHistory2,
  expenseHistory3,
  expenseHistory4,
];
