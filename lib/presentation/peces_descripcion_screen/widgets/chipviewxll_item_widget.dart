import 'package:acuamattic_store/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewxllItemWidget extends StatelessWidget {
  const ChipviewxllItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 17,
        top: 8,
        right: 17,
        bottom: 8,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "XLL",
        style: TextStyle(
          color: appTheme.blueGray900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray200,
      selectedColor: appTheme.gray200,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(20),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
