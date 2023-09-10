import 'package:flutter/material.dart';

class FileRow extends StatefulWidget {
  const FileRow({super.key});

  @override
  State<FileRow> createState() => _FileRowState();
}

class _FileRowState extends State<FileRow> {
  @override
  Widget build(BuildContext context) {
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
    ;
  }
}
