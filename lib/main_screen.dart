import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/pie_chart_card.dart';
import 'components/side_bar.dart';
import 'components/file_row.dart';
import 'components/card_row.dart';
import 'components/table.dart' as comp;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                              _addPadding(const FileRow()),
                              _addPadding(const CardRow()),
                              Expanded(child: _addPadding(const comp.Table())),
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
