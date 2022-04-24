import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_app/app/utils/screen_util.dart';

class FeaturedHeaderView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getScreenSize(context).height * 0.06,
        left: getScreenSize(context).width / 15,
        right: getScreenSize(context).width / 15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Featured',
            style: GoogleFonts.montserrat(
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Text(
              'Unique wildlife tours & destinations',
              textAlign: TextAlign.end,
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
