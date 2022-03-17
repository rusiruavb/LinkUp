import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

class RoundedNumberField extends StatelessWidget {
  final ValueChanged<String> onChange;
  final String text;
  final String type;
  final String value;

  const RoundedNumberField({
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
        NumberFieldContainer(
          child: TextFormField(
            initialValue: value,
            keyboardType:
                type == "phone" ? TextInputType.phone : TextInputType.number,
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

class NumberFieldContainer extends StatelessWidget {
  final Widget child;

  const NumberFieldContainer({Key key, this.child}) : super(key: key);

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
