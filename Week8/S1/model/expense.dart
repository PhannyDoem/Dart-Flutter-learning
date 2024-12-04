import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const Uuid uuid = Uuid();

enum ExpenseType {
  FOOD(Icons.fastfood),
  TRAVEL(Icons.local_airport),
  LEISURE(Icons.confirmation_number_sharp),
  WORK(Icons.work);

  const ExpenseType(this.icon);

  final IconData icon;
}

class Expense {
  final id;
  final title;
  final amount;
  final DateTime date;
  final ExpenseType category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  Expense.FOOD({
    required this.title,
    required this.amount,
    required this.date,
  })  : category = ExpenseType.WORK,
        id = uuid.v4();

  Expense.TRAVEL({
    required this.title,
    required this.amount,
    required this.date,
  })  : category = ExpenseType.TRAVEL,
        id = uuid.v4();

  Expense.LEISURE({
    required this.title,
    required this.amount,
    required this.date,
  })  : category = ExpenseType.LEISURE,
        id = uuid.v4();

  Expense.WORK({
    required this.title,
    required this.amount,
    required this.date,
  })  : category = ExpenseType.WORK,
        id = uuid.v4();
}
