import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String BigTitle = "Welcome to the Economic Development Portal!";
  final String SubTitle =
      "Search for the content that you need most. We're here to help you enable your community to excel.";
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 40, bottom: 50),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                BigTitle,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              Text(SubTitle),
            ],
          ),
        ],
      ),
    );
  }
}
