import 'dart:math';

import 'package:flutter/material.dart';
import '../../styles/styles.dart';

Widget SmallText({required String text}) {
  return Text(
    text,
    style: Styles.smallTextStyleItalic,
    overflow: TextOverflow.ellipsis,
    maxLines: 2,
  );
}