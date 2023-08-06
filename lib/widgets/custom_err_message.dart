import 'package:flutter/material.dart';

class CustomErrMessage extends StatelessWidget {
  const CustomErrMessage({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage);
  }
}
