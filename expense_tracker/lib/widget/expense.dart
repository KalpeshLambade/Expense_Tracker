import 'package:expense_tracker/widget/expense_list/expense_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.model.dart';
import 'package:flutter/widgets.dart';

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
        amount: 500,
        date: DateTime.now(),
        category: Category.work),
    ExpenseModel(
        title: 'Cinema',
        amount: 250,
        date: DateTime.now(),
        category: Category.lesiure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpenseList(expenses: _registedExpense),
          ),
        ],
      ),
    );
  }
}
