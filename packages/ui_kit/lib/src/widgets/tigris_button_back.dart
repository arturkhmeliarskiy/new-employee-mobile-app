import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/src/constants/assets/tigris_images.dart';
import 'package:ui_kit/src/constants/colors/tigris_color.dart';
import 'package:ui_kit/src/widgets/tigris_image.dart';

class TigrisButtonBack extends StatelessWidget {
  final Color backGroundColor;
  final List<Widget> rightIcons;
  const TigrisButtonBack({
    this.backGroundColor = TigrisColor.white,
    this.rightIcons = const <SizedBox>[],
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final backGroundIsWhite = backGroundColor == TigrisColor.white;
    return Container(
      width: width,
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 5),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: [
                TigrisImage(
                  image: TigrisImages.chevronLeft,
                  color: backGroundIsWhite
                      ? TigrisColor.grey
                      : TigrisColor.blackOpacity100,
                  width: 25.0,
                ),
                Text(
                  'back_button_name'.tr(),
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: backGroundIsWhite
                            ? TigrisColor.greenOpacity100
                            : TigrisColor.blackOpacity100,
                      ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Column(
              children: rightIcons,
            ),
          )
        ],
      ),
    );
  }
}
