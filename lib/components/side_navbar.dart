import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkup/constants.dart';
import 'package:linkup/providers/user_provider.dart';
import 'package:provider/provider.dart';

class SideNavbar extends StatefulWidget {
  const SideNavbar({Key key}) : super(key: key);

  @override
  _SideNavbarState createState() => _SideNavbarState();
}

class _SideNavbarState extends State<SideNavbar> {
  UserProvider userProvider;

  @override
  void initState() {
    super.initState();
    userProvider = context.read<UserProvider>();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Drawer(
      backgroundColor: colorDarkMidGround,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          if (userProvider.user.firstName != '' &&
              userProvider.user.lastName != '' &&
              userProvider.user.profileImageURL != '' &&
              userProvider.user.email != '')
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    userProvider.user.profileImageURL,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              accountName: Text(
                userProvider.user.firstName + " " + userProvider.user.lastName,
                style: const TextStyle(
                  color: colorTextPrimary,
                  fontFamily: fontFamilySFPro,
                  fontSize: 22,
                ),
              ),
              accountEmail: Text(
                userProvider.user.email,
                style: const TextStyle(
                  color: colorTextPrimary,
                  fontFamily: fontFamilySFPro,
                  fontSize: 16,
                ),
              ),
              decoration: const BoxDecoration(
                color: colorDarkBackground,
              ),
            ),
          _NavbarItem(
            text: "Sign Up",
            onClick: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/signup");
            },
            icon: FontAwesomeIcons.user,
          ),
          _NavbarItem(
            text: "Login",
            onClick: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/login");
            },
            icon: FontAwesomeIcons.signIn,
          ),
          _NavbarItem(
            text: "My Companies",
            onClick: () {
              Navigator.pushNamed(context, "/login");
              Navigator.pop(context);
            },
            icon: FontAwesomeIcons.building,
          ),
          _NavbarItem(
            text: "My Posts",
            onClick: () {
              Navigator.pushNamed(context, "/login");
            },
            icon: FontAwesomeIcons.fileLines,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _NavbarItem(
              text: "Sign out",
              onClick: () {
                Navigator.pushNamed(context, "/login");
              },
              icon: FontAwesomeIcons.signOut,
            ),
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
      leading: Icon(
        icon,
        size: 23,
        color: colorTextDisabled,
      ),
      horizontalTitleGap: 0,
      title: Text(
        text,
        style: const TextStyle(
          fontFamily: fontFamilySFPro,
          fontSize: 16,
          color: colorTextPrimary,
        ),
      ),
      onTap: onClick,
    );
  }
}
