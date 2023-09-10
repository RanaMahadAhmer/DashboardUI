import 'package:flutter/material.dart';

class CardRow extends StatefulWidget {
  const CardRow({super.key});

  @override
  State<CardRow> createState() => _CardRowState();
}

class _CardRowState extends State<CardRow> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Colors.white10,
          child: SizedBox(
            height: 180,
            width: 200,
          ),
        ),
        Card(
          color: Colors.white10,
          child: SizedBox(
            height: 180,
            width: 200,
          ),
        ),
        Card(
          color: Colors.white10,
          child: SizedBox(
            height: 180,
            width: 200,
          ),
        ),
        Card(
          color: Colors.white10,
          child: SizedBox(
            height: 180,
            width: 200,
          ),
        ),
      ],
    );
  }
}
