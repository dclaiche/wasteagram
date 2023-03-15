import 'package:flutter/material.dart';
import '../../styles/styles.dart';

Widget MediumText({required String text}) {
  return Text(
    text,
    style: Styles.mediumTextStyle,
    overflow: TextOverflow.ellipsis,
    maxLines: 2,
  );
}