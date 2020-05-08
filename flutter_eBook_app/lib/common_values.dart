import 'package:flutter/material.dart';

const kBlackColor = Color(0xFF393939);
const kLightBlackColor = Color(0xFF8F8F8F);
const kIconColor = Color(0xFFF48A37);
const kProgressIndicator = Color(0xFFBE7066);

final kShadowColor = Color(0xFFD3D3D3).withOpacity(.84);

const ROUNDED_BUTTON_DEFAULT_DIMENSIONS = 16.0;
const HOME_SCREEN_STACK_RADIUS = 30.0;

SizedBox makeSpecifiedHeightBox([double specifiedHgt]) {
  return SizedBox(
    height: specifiedHgt ?? 5,
  );
}

SizedBox makeSpecifiedWidthBox([double specifiedWth]) {
  return SizedBox(
    width: specifiedWth ?? 5,
  );
}

void showMyAlert(BuildContext ctx, String myTitle) async {
  return await showDialog(
    context: ctx,
    builder: (BuildContext context) => AlertDialog(
      title: Text(myTitle),
      actions: [
        IconButton(
          icon: Icon(Icons.done_outline),
          onPressed: () {
            Navigator.of(ctx).pop();
          },
        )
      ],
    ),
  );
}
