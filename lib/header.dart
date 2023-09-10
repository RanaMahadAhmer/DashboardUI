import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Widget _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "My Files",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        IconButton(
          style: IconButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hoverColor: Colors.blue,
              backgroundColor: Colors.deepPurple),
          icon: const Icon(Icons.add),
          onPressed: () {},
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
      child: Text("      "),
    );
  }

  Widget _addPadding(
      {required final EdgeInsetsGeometry pad, final Widget? child}) {
    return Padding(padding: pad, child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "Dashboard",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        _addPadding(pad: const EdgeInsets.only(top: 25.0), child: _firstRow()),
        _addPadding(
            pad: const EdgeInsets.symmetric(vertical: 10.0), child: _cardRow()),
        Expanded(
          child: _table(),
        ),
      ],
    );
  }
}
