import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

class RoundedTextField extends StatelessWidget {
  final ValueChanged<String> onChange;
  final String text;
  final String value;
  final String type;

  const RoundedTextField({
    Key key,
    this.text,
    this.value,
    this.type,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      color: colorDarkBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: fontFamilySFPro,
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          TextFieldContainer(
            child: TextFormField(
              initialValue: value,
              keyboardType: type == "email"
                  ? TextInputType.emailAddress
                  : TextInputType.text,
              style: const TextStyle(
                fontFamily: fontFamilySFPro,
                fontSize: 18,
                color: Colors.white,
              ),
              onChanged: onChange,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
              obscureText: type == "password" ? true : false,
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 1.5,
      ),
      width: size.width * 0.9,
      height: 50,
      decoration: BoxDecoration(
        color: colorDarkMidGround,
        borderRadius: BorderRadius.circular(26),
      ),
      child: child,
    );
  }
}
