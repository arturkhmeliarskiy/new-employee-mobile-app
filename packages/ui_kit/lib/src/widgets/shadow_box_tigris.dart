import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ShadowBoxTigris extends StatelessWidget {
  final List<Widget> widget;
  final String title;
  final double top;
  final double left;
  final double right;
  final double height;
  final bool listEmpty;
  final double bottom;
  final bool focus;
  final VoidCallback? updateData;
  final VoidCallback? resetData;
  final bool isApplyBorderRadius;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  const ShadowBoxTigris({
    required this.widget,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.title = '',
    this.updateData,
    this.resetData,
    this.isApplyBorderRadius = false,
    this.listEmpty = false,
    this.top = 0.0,
    this.bottom = 0.0,
    this.left = 16.0,
    this.right = 16.0,
    this.height = 0.0,
    this.focus = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      ),
      decoration: BoxDecoration(
        color: TigrisColor.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: TigrisColor.blackOpacity10,
        ),
        boxShadow: [
          BoxShadow(
            color: TigrisColor.blackOpacity10,
            blurRadius: 5,
            offset: const Offset(
              0,
              5,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Column(
            children: widget,
          ),
          Container(
            height: listEmpty ? 64.0 : 0.0,
            margin: EdgeInsets.all(isApplyBorderRadius ? 15 : 0),
            decoration:
                isApplyBorderRadius ? borderRadiusAll() : const BoxDecoration(),
            child: Center(
              child: Text(
                listEmpty ? title : '',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          if (focus)
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      resetData?.call();
                    },
                    child: Text(
                      'button_cancel'.tr(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      updateData?.call();
                    },
                    child: Text(
                      'button_save'.tr(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }

  BoxDecoration borderRadiusAll() {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
      border: Border.all(
        color: TigrisColor.blackOpacity10,
      ),
    );
  }
}
