import 'package:flutter/cupertino.dart';

import '../utils/app_constance.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(
        color: AppConstance.blueColor,
      ),
    );
  }
}
