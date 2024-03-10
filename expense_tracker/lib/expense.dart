import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.model.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});
  @override
  State<Expense> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expense> {
  final List<ExpenseModel> _registedExpense = [
    ExpenseModel(
        title: 'Flutter Course',
        amount: 20.45,
        date: DateTime.now(),
        category: Category.work),
    ExpenseModel(
        title: 'Cinema',
        amount: 30.4,
        date: DateTime.now(),
        category: Category.lesiure),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('The chart'),
          Text('Expense List'),
        ],
      ),
    );
  }
}
