import 'package:flutter/material.dart';
import 'package:flutter_showreel/views/testpages/test_page_1/test_page_1.dart';

class NavbarItem extends StatelessWidget {
  final String title;
  const NavbarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TestPage1()));
        },
        child: Text(
          title,
        ),
      ),
    );
  }
}
