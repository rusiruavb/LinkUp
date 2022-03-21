import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

class SideNavbar extends StatelessWidget {
  const SideNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/profile_image.jpeg",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            accountName: const Text(
              "Oliva Anna",
              style: TextStyle(
                color: Colors.black,
                fontFamily: fontFamilySFPro,
                fontSize: 22,
              ),
            ),
            accountEmail: const Text(
              "oliva@gmail.com",
              style: TextStyle(
                color: Colors.black,
                fontFamily: fontFamilySFPro,
                fontSize: 16,
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          _NavbarItem(
            text: "Sign Up",
            onClick: () {
              Navigator.pushNamed(context, "/signup");
            },
            icon: Icons.bookmark,
          ),
          _NavbarItem(
            text: "Item 02",
            onClick: () {},
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}

class _NavbarItem extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final IconData icon;

  const _NavbarItem({
    this.text,
    this.onClick,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: colorPrimary,
      leading: Icon(icon, size: 25),
      horizontalTitleGap: 0,
      title: Text(
        text,
        style: const TextStyle(
          fontFamily: fontFamilySFPro,
          fontSize: 16,
        ),
      ),
      onTap: onClick,
    );
  }
}
