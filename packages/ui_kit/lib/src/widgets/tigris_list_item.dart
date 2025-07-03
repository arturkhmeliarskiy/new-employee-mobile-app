import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TigrisListItem extends StatelessWidget {
  final String bodyTitle;
  final String title;
  final Uint8List leftImage;
  final String image;
  final String subTitle;
  final String textBottom;
  final double topOffset;
  final double bottomOffset;
  final bool isShowIndicator;
  final bool isLastItem;
  final bool isApplyBorderRadius;
  final Widget widget;
  final VoidCallback? updateData;
  final bool onlyTitle;

  const TigrisListItem({
    required this.leftImage,
    required this.isLastItem,
    required this.image,
    required this.updateData,
    this.isApplyBorderRadius = true,
    this.isShowIndicator = false,
    this.widget = const SizedBox(),
    this.topOffset = 15,
    this.bottomOffset = 15,
    this.title = '',
    this.subTitle = '',
    this.bodyTitle = '',
    this.textBottom = '',
    this.onlyTitle = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: updateData,
      child: Container(
        margin: EdgeInsets.only(
          top: topOffset,
          left: 15,
          right: 15,
          bottom: isLastItem ? bottomOffset : 0,
        ),
        height: 70,
        decoration: isApplyBorderRadius ? borderRadiusAll() : borderBottom(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      right: 7,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: image.isNotEmpty
                          ? SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.network(
                                image,
                                errorBuilder: (context, exception, stackTrace) {
                                  return const TigrisImage(
                                    image: TigrisImages.imageOff,
                                    height: 30,
                                    width: 30,
                                  );
                                },
                              ),
                            )
                          : const SizedBox(),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (title.isNotEmpty)
                          Text(
                            title,
                            style: Theme.of(context).textTheme.labelSmall,
                            maxLines: onlyTitle ? 2 : 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        if (bodyTitle.isNotEmpty)
                          Text(
                            bodyTitle,
                            style: Theme.of(context).textTheme.labelLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        if (subTitle.isNotEmpty)
                          Flexible(
                            child: Text(
                              subTitle,
                              softWrap: false,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: TigrisColor.blackOpacity100,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        if (textBottom.isNotEmpty)
                          Text(
                            textBottom,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            widget,
            if (isShowIndicator)
              Container(
                height: 10,
                width: 10,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

BoxDecoration borderBottom() {
  return BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: TigrisColor.blackOpacity10,
      ),
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
