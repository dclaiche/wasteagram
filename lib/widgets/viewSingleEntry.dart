import 'package:flutter/material.dart';
import 'components/smallText.dart';
import 'components/headerText.dart';
import 'components/largeText.dart';

class ViewSingleEntry extends StatelessWidget {
  final post;
  const ViewSingleEntry({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                  heightFactor: .3,
                )),
            Semantics(
              textField: true,
              label: "Date of upload of waste",
              child: Expanded(
                    flex: 1,
                    child: LargeText(text: post['date'])),
            ),
            Semantics(
              label: "Image food of waste",
              image: true,
              child: Expanded(
                flex: 5,
                child: Image.network(post['imageURL'])),
            ),
              const Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                  heightFactor: .3,
                )),
            Semantics(
              textField: true,
              label: "Number of items wasted",
              child: Expanded(
                flex: 1,
                child: HeaderText(text: "Items: ${post['quantity']}")),
            ),
            Semantics(
              textField: true,
              label: "Location of waste",
              child: Expanded(
                flex: 1,
                child: SmallText(text: " LOCATION: Latitude: ${post['latitude']} Longitude: ${post['longitude']}")),
            ),
          ],
        );
  }
}