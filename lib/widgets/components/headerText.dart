import 'package:flutter/material.dart';
import '../../styles/styles.dart';

Widget HeaderText({required String text}) {
  return Text(
    text,
    style: Styles.mediumLargeTextStyleBold,
    overflow: TextOverflow.ellipsis,
    maxLines: 2,
  );
}