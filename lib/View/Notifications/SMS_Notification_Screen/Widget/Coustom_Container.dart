import 'package:flutter/material.dart';

import '../../../../constant.dart';



class LectureCard1 extends StatefulWidget {
  final String title;
  final String checkText;

  const LectureCard1({
    super.key,
    required this.title,
    required this.checkText,
  });

  @override
  State<LectureCard1> createState() => _LectureCard1State();
}

class _LectureCard1State extends State<LectureCard1>
    with SingleTickerProviderStateMixin {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(16),
        color: kTextWhiteColor,
        curve: Curves.easeInOut,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => setState(() => isExpanded = !isExpanded),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 250,
                    child: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            if (isExpanded) ...[
              Divider(
                  color: kTextLightColor
              ),
              SizedBox(height: 10),
              Text(
                widget.checkText,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),
              ),
              Divider(
                  color: kTextLightColor
              ),
            ]
          ],
        ),
      ),
    );
  }
}
