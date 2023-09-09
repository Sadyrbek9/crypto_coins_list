import 'package:crypto_coins_list/config/theme/theme.dart';
import 'package:crypto_coins_list/core/router/router.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciestListApp extends StatelessWidget {
  const CryptoCurrenciestListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currenciest List',
      theme: darkTheme,
      routes: routes,
    );
  }
}