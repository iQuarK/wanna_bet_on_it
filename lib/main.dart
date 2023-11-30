import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/account_created_successfully.dart';
import 'package:wanna_bet_on_it/add_your_address.dart';
import 'package:wanna_bet_on_it/homepage.dart';
import 'package:wanna_bet_on_it/id_verification.dart';
import 'package:wanna_bet_on_it/initial.dart';
import 'package:wanna_bet_on_it/set_a_password.dart';
import 'package:wanna_bet_on_it/styles/colors.dart';
import 'package:wanna_bet_on_it/styles/themes.dart';
import 'package:wanna_bet_on_it/whats_your_email_address.dart';
import 'package:wanna_bet_on_it/whats_your_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WannaBetOnIt',
        theme: ThemeData(
            useMaterial3: true,
            appBarTheme: appBarTheme,
            progressIndicatorTheme: progressIndicatorTheme,
            colorScheme: ColorScheme.fromSeed(
              seedColor: primaryMainColor,
              background: bodyBackgroundColor,
            ),
            filledButtonTheme: filledButtonTheme,
            textTheme: const TextTheme()),
        home: const Initial(),
        routes: {
          '/initial': (context) => const Initial(),
          '/whats_your_email_address': (context) =>
              const WhatsYourEmailAddress(),
          '/set_a_password': (context) => const SetAPassword(),
          '/whats_your_password': (context) => const WhatsYourPassword(),
          '/add_your_address': (context) => const AddYourAddress(),
          '/id_verification': (context) => const IDVerification(),
          '/account_created_successfully': (context) =>
          const AccountCreatedSuccessfully(),
          '/homepage': (context) => const Homepage(),
        });
  }
}
