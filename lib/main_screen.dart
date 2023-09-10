import 'package:flutter/material.dart';

import 'header.dart';
import 'pie_chart_card.dart';
import 'side_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "My Files",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.5),
          child: IconButton(
            style: IconButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hoverColor: Colors.blue,
                backgroundColor: Colors.deepPurple),
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _cardRow() {
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

  Widget _table() {
    return const Card(
      color: Colors.white12,
      child: Text(''),
    );
  }

  Widget _addPadding(Widget child) {
    return Padding(padding: const EdgeInsets.only(top: 10), child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          flex: 1,
          child: ColoredBox(color: Colors.black12, child: SideBar()),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Header(),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              _addPadding(_firstRow()),
                              _addPadding(_cardRow()),
                              Expanded(child: _addPadding(_table())),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: _addPadding(const PieChartCard())),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
