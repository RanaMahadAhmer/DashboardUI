import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
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

  Widget _profileSelector() {
    return const DropdownMenu(
      leadingIcon: Icon(Icons.person),
      width: 160,
      dropdownMenuEntries: [DropdownMenuEntry(value: "Person1", label: "Name")],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Text(
            "Dashboard",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
            width: 230,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: _searchBar()),
        _profileSelector(),
      ],
    );
  }
}
