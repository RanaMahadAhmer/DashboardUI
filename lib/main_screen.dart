import 'package:flutter/material.dart';

import 'middle_widgets.dart';
import 'rightSideBar.dart';
import 'side_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: ColoredBox(color: Colors.black12, child: SideBar()),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: MiddleWidgets(),
          ),
        ),
        Expanded(
          flex: 2,
          child: RightSideBar(),
        ),
      ],
    );
  }
}
