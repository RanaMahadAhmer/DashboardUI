import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  Widget _sideBarButton(
      {required IconData icon,
      required String text,
      required VoidCallback onTap}) {
    return ListTile(
      hoverColor: Colors.white12,
      onTap: onTap,
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset(
              'images/cloud-storage.png',
              width: 100,
            ),
          ),
          _sideBarButton(
              icon: Icons.dashboard_outlined, text: 'Dashboard', onTap: () {}),
          _sideBarButton(
              icon: Icons.money_off_outlined,
              text: 'Transaction',
              onTap: () {}),
          _sideBarButton(icon: Icons.task_outlined, text: 'Task', onTap: () {}),
          _sideBarButton(
              icon: Icons.document_scanner_outlined,
              text: 'Documents',
              onTap: () {}),
          _sideBarButton(
              icon: Icons.store_outlined, text: 'Store', onTap: () {}),
          _sideBarButton(
              icon: Icons.notification_important_outlined,
              text: 'Notifications',
              onTap: () {}),
          _sideBarButton(
              icon: Icons.settings_outlined, text: 'Settings', onTap: () {}),
        ],
      ),
    );
  }
}
