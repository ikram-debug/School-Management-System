import 'package:flutter/material.dart';

import '../../../../constant.dart';

class CustomRow extends StatelessWidget {

  final String Title;
  final String Text1;

  const CustomRow({super.key,
    required this.Title,
    required this.Text1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: kTextLightColor,
            fontSize:16,
          ),
        ),
        Text(
          Text1,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 16,
            color: kTextBlackColor,
          ),
        ),
      ],
    );
  }
}
