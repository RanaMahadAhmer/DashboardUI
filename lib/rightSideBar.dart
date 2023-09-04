import 'package:flutter/material.dart';

class RightSideBar extends StatefulWidget {
  const RightSideBar({super.key});

  @override
  State<RightSideBar> createState() => _RightSideBarState();
}

class _RightSideBarState extends State<RightSideBar> {
  Widget _chartCard() {
    return const Card(
      color: Colors.white12,
      child: Text(""),
    );
  }

  Widget _searchBar() {
    return SearchBar(
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)))),
      hintText: "Search",
      trailing: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
          style: IconButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              hoverColor: Colors.blue,
              backgroundColor: Colors.deepPurple),
        )
      ],
    );
  }

  Widget _dropDownMenu() {
    return const DropdownMenu(
      leadingIcon: Icon(Icons.person),
      width: 160,
      dropdownMenuEntries: [DropdownMenuEntry(value: "Person1", label: "Name")],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 180,
                child: _searchBar(),
              ),
              _dropDownMenu(),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: _chartCard(),
            ),
          ),
        ],
      ),
    );
  }
}
