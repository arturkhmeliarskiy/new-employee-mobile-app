import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TigirsCommentDialog extends StatefulWidget {
  final String questionConfirm;
  final String title;
  final VoidCallback confirm;
  final TextEditingController text;

  const TigirsCommentDialog({
    required this.confirm,
    required this.text,
    this.title = '',
    this.questionConfirm = '',
    Key? key,
  }) : super(key: key);

  @override
  State<TigirsCommentDialog> createState() => _TigirsCommentDialogState();
}

class _TigirsCommentDialogState extends State<TigirsCommentDialog> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        TigrisDialog.selectDialog(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          context: context,
          widget: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
              ),
              child: Text(
                widget.questionConfirm,
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: width * 0.7,
              height: 280,
              decoration: BoxDecoration(
                color: TigrisColor.blackOpacity10,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: TextField(
                  minLines: 1,
                  maxLines: 100,
                  keyboardType: TextInputType.multiline,
                  controller: widget.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.labelSmall,
                  ),
                ),
              ),
            ),
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
                      Navigator.pop(
                        context,
                      );
                      setState(() {
                        widget.text.text = '';
                      });
                    },
                    child: Text(
                      'button_cancel'.tr(),
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.confirm();
                    },
                    child: Text(
                      'profile_screen.notification_dialog_ok'.tr(),
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall,
                    ),
                  )
                ],
              ),
            ),
          ],
          height: 400,
          width: width * .95,
        );
      },
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(
          top: 12,
          bottom: 12,
        ),
        decoration: BoxDecoration(
          color: TigrisColor.greenOpacity100,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        height: 70,
        child: Center(
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: TigrisColor.white,
                ),
          ),
        ),
      ),
    );
  }
}
