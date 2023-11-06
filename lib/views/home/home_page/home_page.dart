import 'package:flutter/material.dart';
import 'package:flutter_showreel/widgets/header_text/header_text.dart';
import 'package:flutter_showreel/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_showreel/widgets/gallery_buttons/gallery_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 240, 240),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 60.0,
          horizontal: 100.0,
        ),
        alignment: Alignment.topCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 236, 232, 232),
              width: 10.0,
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1800),
            child: const Column(
              children: <Widget>[
                NavBar(),
                HeaderText(),
                GalleryButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
