import 'package:xafe_challenge/app/features/categories/data/models/category.dart';

class Expense {
  String name;
  String amount;
  // List<Category> category;
  String emoji;
  String date;

  Expense(this.name, this.amount, this.emoji, this.date);
}
