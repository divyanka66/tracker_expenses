import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const  uuid=  Uuid();

enum Category{ food ,travel , leisure, work}

const categoryIcons = {
  Category.food : Icons.lunch_dining

};

class Expense{
  Expense({
    required this.tittle,
    required this.amount,
    required this.date,
    required this.category
  }): id = uuid.v4();

  final String id;
  final String tittle;
  final double amount;
  final DateTime date;
  final Category category;
}