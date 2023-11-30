import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/components/form_field_input.dart';
import 'package:wanna_bet_on_it/layouts/intro_layout.dart';

class AddYourAddress extends StatelessWidget {
  const AddYourAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntroLayout(
        title: 'Add your address',
        bottomButtonOnPress: () =>
            Navigator.pushNamed(context, "/id_verification"),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FormFieldInput(label: 'House / apartment / flat number'),
            FormFieldInput(label: 'Address line 1'),
            FormFieldInput(label: 'Address line 2'),
            FormFieldInput(label: 'City / Town'),
            FormFieldInput(label: 'Postcode'),
          ],
        ));
  }
}
