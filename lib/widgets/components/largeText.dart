import 'package:flutter/material.dart';
import '../../styles/styles.dart';

Widget LargeText({required String text}) {
  return Text(
    text,
    style: Styles.largeTextStyle,
    overflow: TextOverflow.ellipsis,
    maxLines: 2,
  );
}