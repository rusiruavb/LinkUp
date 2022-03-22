import "package:flutter/material.dart";

class ProfileScreen extends StatelessWidget {
  final String profileImageURL;
  final String firstName;
  final String lastName;
  final String email;
  final String address;
  final String phoneNumber;

  const ProfileScreen({
    Key key,
    this.profileImageURL,
    this.firstName,
    this.lastName,
    this.email,
    this.address,
    this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
