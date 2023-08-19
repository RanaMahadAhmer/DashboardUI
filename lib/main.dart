import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shop",
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(child: Screen()),
      ),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Widget sideBarButton({required IconData icon, required String text}) {
    return ListTile(
      dense: true,
      onTap: () {},
      leading: Icon(
        icon,
        color: Colors.white70,
      ),
      title: Text(
        text,
        style: const TextStyle(color: Colors.white70),
      ),
    );
  }

  Widget sideBar() {
    return SingleChildScrollView(
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset(
              'images/cloud-storage.png',
              width: 100,
            ),
          ),
          sideBarButton(icon: Icons.dashboard_outlined, text: 'Dashboard'),
          sideBarButton(icon: Icons.money_off_outlined, text: 'Transaction'),
          sideBarButton(icon: Icons.task_outlined, text: 'Task'),
          sideBarButton(
              icon: Icons.document_scanner_outlined, text: 'Documents'),
          sideBarButton(icon: Icons.store_outlined, text: 'Store'),
          sideBarButton(
              icon: Icons.notification_important_outlined,
              text: 'Notifications'),
          sideBarButton(icon: Icons.settings_outlined, text: 'Settings'),
        ],
      ),
    );
  }

  Widget topRow() {
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
                    hoverColor: Colors.blueAccent,
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
              ]),
        ),
      ],
    );
  }

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
        Expanded(
          flex: 1,
          child: ColoredBox(color: Colors.black12, child: sideBar()),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                topRow(),
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
