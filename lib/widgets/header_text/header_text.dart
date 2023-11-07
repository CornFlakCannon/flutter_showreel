import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String BigTitle = "Welcome to the Economic Development Portal!";
  final String SubTitle =
      "Search for the content that you need most. We're here to help you enable your community to excel.";
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return _SpacingUpperLower(
      child: Container(
        height: 100,
        child: Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    BigTitle,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    SubTitle,
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _SpacingUpperLower extends StatelessWidget {
  final Widget child;
  const _SpacingUpperLower({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        child,
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
