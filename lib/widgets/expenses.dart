
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tracker_expenses/models/expense.dart';
import 'package:tracker_expenses/widgets/expenses_list/expenses_list.dart';



class Expenses extends StatefulWidget{
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return  _Expenses();
  }

}
class _Expenses extends State<Expenses>{
  final List<Expense>_registeredExpenses = [
    Expense(
        tittle: 'flutter ',
        amount: 13.0,
        date: DateTime.now(),
        category : Category.work),
    Expense(
        tittle: 'flutter ',
        amount: 13.0,
        date: DateTime.now(),
        category : Category.work),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children:[
          const Text('the chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    ) ;
  }

}