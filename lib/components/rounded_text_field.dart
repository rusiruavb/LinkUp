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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: fontFamilyRobotoRegular,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.left,
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
              fontFamily: fontFamilyRobotoRegular,
              fontSize: 18,
            ),
            onChanged: onChange,
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        )
      ],
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
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(26),
      ),
      child: child,
    );
  }
}
