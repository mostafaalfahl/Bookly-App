import 'package:flutter/material.dart';

void customSnackBar(context, text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
      ),
    ),
  );
}
