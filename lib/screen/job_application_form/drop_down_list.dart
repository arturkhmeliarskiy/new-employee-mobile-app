import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class DropDownList extends StatefulWidget {
  final void Function(String) occupation;
  final void Function() onSubmit;
  final TextEditingController controller;
  final String curentLang;

  const DropDownList({
    required this.occupation,
    required this.onSubmit,
    required this.controller,
    required this.curentLang,
    Key? key,
  }) : super(key: key);

  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList>
    with TickerProviderStateMixin {
  OverlayEntry _overlayEntry =
      OverlayEntry(builder: (context) => const SizedBox());
  bool isVisible = false;
  bool loading = false;
  DateTime lastEntryTime = DateTime.now();
  final LayerLink link = LayerLink();

  double heightOverlay(List<SearchInputModel> text) {
    double _height = 0;
    text.forEach((element) {
      element.name.length < 28
          ? _height = _height + 45
          : _height = _height + 65;
    });
    return _height;
  }

  OverlayEntry _createOverlay(List<SearchInputModel> text) {
    final heightScreen = MediaQuery.of(context).size.height;
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Size size = renderBox.size;
    final double height =
        text.length > 4 ? heightScreen * .39 : heightOverlay(text);

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: link,
          showWhenUnlinked: false,
          offset: Offset(0.0, size.height - height - 64),
          child: Container(
            height: height,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: TigrisColor.blackOpacity30,
                  offset: const Offset(0, 5),
                  blurRadius: 15,
                ),
              ],
            ),
            padding: const EdgeInsets.all(5),
            child: Center(
              child: ListView.builder(
                reverse: true,
                itemCount: text.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      widget.controller.text = text[index].name;
                      widget.occupation(
                        text[index].code,
                      );
                      _overlayEntry.remove();
                      isVisible = false;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          child: Text(
                            text[index].name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final OverlayState? overlayState = Overlay.of(context);
    return BlocListener<JobApplicationFormBloc, JobApplicationFormState>(
      listener: (context, state) => state.maybeMap(
        resultSuitableOptions: (state) {
          if (isVisible) {
            _overlayEntry.remove();
            isVisible = false;
          }
          if (state.resultSuitableOptions.isNotEmpty) {
            _overlayEntry = _createOverlay(state.resultSuitableOptions);
            overlayState?.insert(_overlayEntry);
            isVisible = true;
          }
          setState(() {
            loading = false;
          });

          return null;
        },
        orElse: () {
          return null;
        },
      ),
      child: CompositedTransformTarget(
        link: link,
        child: TigrisTextField(
          suffixWidget: loading
              ? const SizedBox(
                  height: 60,
                  width: 100,
                  child: TigrisProgressIndicator(
                    sizeRatio: 0.5,
                  ),
                )
              : nil,
          greenBackGround: true,
          onChanged: (_) async {
            lastEntryTime = DateTime.now();

            await Future<void>.delayed(const Duration(milliseconds: 600));

            final timeDifference =
                DateTime.now().difference(lastEntryTime).inMilliseconds;

            if (timeDifference > 599) {
              setState(() {
                loading = true;
              });
              context.read<JobApplicationFormBloc>().add(
                    JobApplicationFormEvent.getSuitableOptions(
                      text: widget.controller.text,
                      currentLang: widget.curentLang,
                    ),
                  );
            }
          },
          onSubmitted: (_) {
            if (isVisible) {
              _overlayEntry.remove();
              isVisible = false;
            }
            widget.onSubmit();
          },
          controller: widget.controller,
          title: '',
        ),
      ),
    );
  }
}
