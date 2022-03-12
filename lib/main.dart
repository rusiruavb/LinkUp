import "package:flutter/material.dart";

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
                fontFamily: "SF-Pro",
                fontSize: 24.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
