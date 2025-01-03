import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  const DotIndicator({
    Key? key,
    required this.currentPage,
    required this.pageCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index
                ? const Color(0xFF00AA13)
                : Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
