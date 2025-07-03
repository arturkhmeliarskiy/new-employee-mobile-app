import 'package:flutter/material.dart';
import 'package:ui_kit/src/constants/assets/tigris_images.dart';
import 'package:ui_kit/src/constants/colors/tigris_color.dart';
import 'package:ui_kit/src/widgets/tigris_image.dart';

class TigrisShiftCard extends StatelessWidget {
  final String linkLogo;
  final String titleCard;
  final String titleCenter;
  final String titleBottom;
  final String timePeriod;
  final int index;
  const TigrisShiftCard({
    required this.titleCard,
    this.index = 0,
    this.linkLogo = '',
    this.titleCenter = '',
    this.titleBottom = '',
    this.timePeriod = '',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 15,
        top: index == 0 ? 15 : 0,
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
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  right: 15,
                ),
                height: width * .2,
                width: width * .2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: linkLogo.isNotEmpty
                    ? Image.network(
                        linkLogo,
                        errorBuilder: (
                          context,
                          exception,
                          stackTrace,
                        ) {
                          return const TigrisImage(
                            image: TigrisImages.imageOff,
                            height: 30,
                            width: 30,
                          );
                        },
                      )
                    : const SizedBox(),
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleCard,
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    titleCenter,
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    titleBottom,
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall?.copyWith(
                          fontSize: 16,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    timePeriod,
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge?.copyWith(
                          color: TigrisColor.blackOpacity100,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
