import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/src/constants/assets/tigris_images.dart';
import 'package:ui_kit/src/widgets/tigris_image.dart';

class TigrisProgressIndicator extends StatefulWidget {
  final double sizeRatio;
  const TigrisProgressIndicator({this.sizeRatio = 1, Key? key})
      : super(key: key);

  @override
  _TigrisProgressIndicatorState createState() =>
      _TigrisProgressIndicatorState();
}

class _TigrisProgressIndicatorState extends State<TigrisProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  String ellipsis = '';

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(const Duration(seconds: 1)).then((value) {
      if (_controller.isAnimating) {
        if (ellipsis != '..') {
          setState(() {
            ellipsis = '$ellipsis.';
          });
        } else {
          setState(() {
            ellipsis = '';
          });
        }
      }
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotationTransition(
          turns: _animation,
          child: TigrisImage(
            image: TigrisImages.loading,
            height: 40.0 * widget.sizeRatio,
          ),
        ),
        Text(
          'loading_text'.tr(),
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(fontSize: 18 * widget.sizeRatio),
          maxLines: 1,
        ),
        SizedBox(
          width: 10 * widget.sizeRatio,
          child: Text(
            ellipsis,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(fontSize: 18 * widget.sizeRatio),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
