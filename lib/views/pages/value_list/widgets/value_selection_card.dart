import 'package:flutter/material.dart';

class ValueSelectionCard extends StatefulWidget {
  final List<String> questions;

  const ValueSelectionCard({
    Key? key,
    required this.questions,
  }) : super(key: key);

  @override
  State<ValueSelectionCard> createState() => _ValueSelectionCardState();
}

class _ValueSelectionCardState extends State<ValueSelectionCard> {
  late List<int> selectedValues;

  @override
  void initState() {
    super.initState();
    selectedValues = List.filled(widget.questions.length, -1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          children: List.generate(
            widget.questions.length,
            (questionIndex) => _buildQuestionItem(questionIndex),
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionItem(int questionIndex) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.questions[questionIndex],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '大事\nにする',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.cyan[700],
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildSelectionCircles(questionIndex),
                      ),
                    ),
                  ),
                  Text(
                    '大事\nでない',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.purple[700],
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        if (questionIndex < widget.questions.length - 1)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              children: List.generate(
                32,
                (index) => Expanded(
                  child: Container(
                    height: 1,
                    color: index % 2 == 0
                        ? const Color(0xFFAAAAAA)
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  List<Widget> _buildSelectionCircles(int questionIndex) {
    return List.generate(
      5,
      (index) {
        final isSelected = selectedValues[questionIndex] == index;
        Color circleColor;
        double circleSize;

        // サイズの決定
        if (index == 0 || index == 4) {
          circleSize = 40;
        } else if (index == 1 || index == 3) {
          circleSize = 28;
        } else {
          circleSize = 24;
        }

        // 色の決定
        if (index < 2) {
          circleColor = Colors.cyan;
        } else if (index > 2) {
          circleColor = Colors.purple;
        } else {
          circleColor = Colors.grey;
        }

        return Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 8), // 両サイドに8pxずつで間隔16px
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedValues[questionIndex] = index;
              });
            },
            child: Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: circleColor,
                  width: 2,
                ),
                color: isSelected
                    ? circleColor.withOpacity(0.2)
                    : Colors.transparent,
              ),
            ),
          ),
        );
      },
    );
  }
}
