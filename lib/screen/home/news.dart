import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:view_models/view_models.dart';

class News extends StatelessWidget {
  final NewsDataModel model;
  const News({
    required this.model,
    Key? key,
  }) : super(key: key);

  Future<void> tapLink(String url) async {
    Uri _url;
    if (url.indexOf('http') == (-1)) {
      _url = Uri(scheme: 'https', path: url);
    } else {
      _url = Uri.parse(url);
    }

    await launchUrl(_url, mode: LaunchMode.externalNonBrowserApplication);
  }

  bool isNotDark(Color color) {
    return 1 -
            (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue) /
                255 >
        0.5;
  }

  @override
  Widget build(BuildContext context) {
    final _isNotDark = isNotDark(Color(int.parse(model.color)));
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(int.parse(model.color)),
        height: height,
        child: Column(
          children: [
            SizedBox(
              height: height * .03,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              height: height * .08,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    TigrisImage(
                      image: TigrisImages.chevronLeft,
                      color: _isNotDark
                          ? TigrisColor.white
                          : TigrisColor.blackOpacity100,
                      width: 25.0,
                    ),
                    Text(
                      'back_button_name'.tr(),
                      style: _isNotDark
                          ? Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: TigrisColor.white,
                                fontWeight: FontWeight.w600,
                              )
                          : Theme.of(context).textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .89,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      bottom: 15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            model.title,
                            style: _isNotDark
                                ? Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(color: TigrisColor.white)
                                : Theme.of(context).textTheme.labelMedium,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: TigrisColor.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      border: Border.all(
                        color: TigrisColor.white,
                      ),
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height -
                            (height * .11) -
                            82,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Html(
                          data: model.content,
                          style: {
                            'p': Style(color: TigrisColor.blackOpacity100),
                          },
                          onLinkTap: (url, _, __, ___) async {
                            await tapLink(url ?? '');
                          },
                        ),
                      ),
                    ),
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
