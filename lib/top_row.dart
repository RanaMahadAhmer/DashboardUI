import 'package:flutter/material.dart';

class TopRow extends StatefulWidget {
  const TopRow({super.key});

  @override
  State<TopRow> createState() => _TopRowState();
}

class _TopRowState extends State<TopRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            "Dashboard",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          width: 170,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: SearchBar(
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
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: DropdownMenu(
            leadingIcon: Icon(Icons.person),
            width: 150,
            dropdownMenuEntries: [
              DropdownMenuEntry(value: "Person1", label: "Name")
            ],
          ),
        ),
      ],
    );
  }
}
