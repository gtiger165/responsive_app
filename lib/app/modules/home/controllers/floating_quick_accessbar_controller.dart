import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_app/app/utils/screen_util.dart';

class FloatingQuickAccessbarController extends GetxController {
  final _isHovering = [false, false, false, false].obs;
  List<Widget> rowElements = [];

  List<String> items = ['Destination', 'Dates', 'People', 'Experience'];
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny,
  ];

  List<Widget> generateRowElements(BuildContext context) {
    rowElements.clear();
    for (var i = 0; i < items.length; i++) {
      Widget elementTile = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (value) => _isHovering[i] = value,
        onTap: () {},
        child: Text(
          items[i],
          style: TextStyle(
            color: _isHovering[i]
                ? Theme.of(context).primaryTextTheme.button?.decorationColor
                : Theme.of(context).primaryTextTheme.button?.color,
          ),
        ),
      );

      Widget spacer = SizedBox(
        height: getScreenSize(context).height / 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[100],
          thickness: 1,
        ),
      );

      rowElements.add(elementTile);
      if (i < items.length - 1) {
        rowElements.add(spacer);
      }
    }
    return rowElements;
  }
}
