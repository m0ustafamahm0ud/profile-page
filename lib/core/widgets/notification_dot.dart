import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profile/core/utils/app_constance.dart';

class NotificationDot extends StatelessWidget {
  const NotificationDot({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppConstance.lightRed,
      radius: 10,
      child: Text(
        count.toString(),
        style: TextStyle(fontSize: 12, color: AppConstance.whiteColor),
      ),
    );
  }
}
