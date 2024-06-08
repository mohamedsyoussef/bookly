import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errMessage),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.white,
            duration: const Duration(seconds: 4),
          ),
        );
      },
    );

    return const SizedBox
        .shrink(); // Return an empty widget since SnackBar is shown by ScaffoldMessenger
  }
}
