import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';

import 'package:tigris/screen/registration/registration_screen_password.dart';
import 'package:ui_kit/ui_kit.dart';

class RegistrationScreenUserInfo extends StatefulWidget {
  const RegistrationScreenUserInfo({Key? key}) : super(key: key);

  @override
  State<RegistrationScreenUserInfo> createState() =>
      _RegistrationScreenUserInfoState();
}

class _RegistrationScreenUserInfoState
    extends State<RegistrationScreenUserInfo> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _phone = TextEditingController();
  int lengthPhone = 0;

  @override
  void initState() {
    context.read<RegistrationBloc>().add(
          RegistrationEvent.updateInformation(),
        );
    super.initState();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: BlocListener<RegistrationBloc, RegistrationState>(
        listener: (context, state) => state.maybeMap(
          fieldValues: (value) {
            setState(() {
              _firstName.text = value.firstName;
              _lastName.text = value.lastName;
              _phone.text = value.phoneNamber;
            });
            return nil;
          },
          error: (response) {
            if (response.page == 'userInfoPage') {
              _firstName.text = _firstName.text.trim();
              _lastName.text = _lastName.text.trim();
              _phone.text = _phone.text.trim();
            }
            return null;
          },
          orElse: () {
            return null;
          },
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              SizedBox(height: height * .17),
              const TigrisImage(
                image: TigrisImages.logo,
                height: 70.0,
              ),
              SizedBox(height: height * .11),
              TigrisTextField(
                onTap: () => _firstName.selection = TextSelection.fromPosition(
                  TextPosition(offset: _firstName.text.length),
                ),
                onSubmitted: (_) => {},
                controller: _firstName,
                title: 'registration_screen.first_name'.tr(),
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              TigrisTextField(
                onTap: () => _lastName.selection = TextSelection.fromPosition(
                  TextPosition(offset: _lastName.text.length),
                ),
                onSubmitted: (_) => {
                  setState(() {
                    _phone.text = '+';
                  })
                },
                controller: _lastName,
                title: 'registration_screen.last_name'.tr(),
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              TigrisTextField(
                onTap: () => _phone.selection = TextSelection.fromPosition(
                  TextPosition(offset: _phone.text.length),
                ),
                onChanged: (_) {
                  if (_phone.text.length > lengthPhone) {
                    if (_phone.text[0] != '+') {
                      _phone.text = '+${_phone.text}';
                    }

                    final symbol = int.tryParse(
                      _phone.text.substring(_phone.text.length - 1),
                    );
                    if (symbol == null) {
                      _phone.text =
                          _phone.text.substring(0, _phone.text.length - 1);
                    }
                  } else {
                    if (_phone.text.length < 2) {
                      _phone.text = '+';
                    }
                  }
                  setState(() {
                    _phone.text;
                  });
                  _phone.selection = TextSelection.fromPosition(
                    TextPosition(offset: _phone.text.length),
                  );
                  lengthPhone = _phone.text.length;
                },
                onSubmitted: (_) => {},
                controller: _phone,
                title: 'registration_screen.phone_number'.tr(),
                textInputType: TextInputType.phone,
              ),
              SizedBox(height: height * .18),
              TigrisButton.secondary(
                text: 'registration_screen.next_step'.tr(),
                onPressed: () {
                  context.read<RegistrationBloc>().add(
                        RegistrationEvent.enteredUserInfo(
                          firstName: _firstName.text.trim(),
                          lastName: _lastName.text.trim(),
                          phoneNamber: _phone.text.trim(),
                        ),
                      );
                  if (_firstName.text.trim().isNotEmpty &
                          _lastName.text.trim().isNotEmpty &
                          _phone.text.trim().isNotEmpty &&
                      _phone.text.trim() != '+') {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) =>
                            const RegistrationScreenPassword(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
