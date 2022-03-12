import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

void main() => runApp(const LinkUpApp());

class LinkUpApp extends StatelessWidget {
  const LinkUpApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "LinkUp",
              style: TextStyle(
                fontFamily: "SF-Pro",
              ),
            ),
          ),
          body: const Center(
            child: Text(
              "LinkUp Mobile",
              style: TextStyle(
                color: Colors.black,
                fontFamily: fontFamilySFPro,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
