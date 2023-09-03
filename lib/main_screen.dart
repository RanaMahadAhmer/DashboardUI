import 'package:flutter/material.dart';

import 'side_bar.dart';
import 'top_row.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "My Files",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.deepPurple),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.add),
              Text(
                "Add New",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget cardRow() {
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

  Widget table() {
    return const Card(
      color: Colors.white12,
      child: Text("      "),
    );
  }

  Widget rightSideBar() {
    return const Card(
      color: Colors.white12,
      child: Text(""),
    );
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
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopRow(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: secondRow(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: cardRow(),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: table(),
                              )),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: rightSideBar(),
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
