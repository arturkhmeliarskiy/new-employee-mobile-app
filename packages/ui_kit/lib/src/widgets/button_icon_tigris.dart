import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ButtonIconTigris extends StatelessWidget {
  final bool bottomMargin;
  final bool shadow;
  final String title;
  final double marginLeft;
  final double marginLeftTitle;
  final double marginRight;
  final VoidCallback action;
  final String rightIcon;
  final String leftIcon;

  const ButtonIconTigris({
    required this.action,
    required this.bottomMargin,
    required this.title,
    this.shadow = false,
    this.marginLeft = 15,
    this.marginRight = 15,
    this.marginLeftTitle = 15,
    this.leftIcon = '',
    this.rightIcon = TigrisImages.chevronRight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        margin: EdgeInsets.only(
          top: 16,
          left: marginLeft,
          right: marginRight,
          bottom: bottomMargin ? 15 : 0,
        ),
        height: 70,
        decoration: BoxDecoration(
          color: TigrisColor.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color: TigrisColor.blackOpacity10,
          ),
          boxShadow: [
            if (shadow)
              BoxShadow(
                color: TigrisColor.blackOpacity20,
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 3), // changes position of shadow
              )
            else
              const BoxShadow()
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                children: [
                  if (leftIcon.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(left: 19),
                      child: TigrisImage(
                        image: leftIcon,
                        color: TigrisColor.greenOpacity100,
                        width: 25.0,
                      ),
                    ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: marginLeftTitle,
                      ),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.labelSmall,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TigrisImage(
                image: rightIcon,
                color: TigrisColor.greenOpacity100,
                width: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
