import 'package:flutter/material.dart';

class NewEntry {
  final String id;
  final String seat;
  final String model;
  final String price;
  final String type;
  final String mobilenumber;
  final String vehiclenumber;
  final String locate;

  NewEntry(
      {required this.id,
      required this.seat,
      required this.model,
      required this.price,
      required this.type,
      required this.mobilenumber,
      required this.vehiclenumber,
      required this.locate});
}
