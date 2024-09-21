import 'package:flutter/material.dart';

class TrackOrderStep extends StatelessWidget {
  final String step;
  final bool isCompleted;
  final bool isLastStep;

  const TrackOrderStep({
    Key? key,
    required this.step,
    required this.isCompleted,
    this.isLastStep = false, // Added to check if this is the last step
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted ? Colors.green : Colors.grey,
              ),
              child: Center(
                child: Icon(
                  isCompleted ? Icons.check : Icons.radio_button_unchecked,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
            if (!isLastStep) // Line will not be shown for the last step
              Container(
                width: 2,
                height: 60,
                color: Colors.grey,
              ),
          ],
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              step,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),

          ],
        ),
      ],
    );
  }
}