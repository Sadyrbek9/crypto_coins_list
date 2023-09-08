import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CryptoCurrenciestListApp());
}

class CryptoCurrenciestListApp extends StatelessWidget {
  const CryptoCurrenciestListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currenciest List',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 23, 22, 22),
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 23, 22, 22),
        primarySwatch: Colors.yellow,
        dividerColor: Colors.white.withOpacity(0.3),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      routes: {
        '/': (context) => const CryptoListScreen(),
        '/coin': (context) => const CryptoCoinScreen(),
      },
    );
  }
}

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text("Crypto Currenciest List")),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: 20,
          itemBuilder: (context, i) {
            const coinName = 'Bitcoin';
            return ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/bitcoin_logo3.svg',
                  height: 30,
                  width: 30,
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: Text(
                  coinName,
                  style: theme.textTheme.bodyMedium,
                ),
                subtitle: Text(
                  '2000\$',
                  style: theme.textTheme.labelSmall,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/coin',
                    arguments: coinName,
                  );
                });
          }),
    );
  }
}

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;
  @override
  void didChangeDependencies() {
   final args = ModalRoute.of(context)?.settings.arguments;
   assert(
    args != null && args is String, 'You must provide String args' 
   );
  //  if (args == null){  // assertке чейин текшерип алдык, томонку код менен
  //   print('You must provide args!');
  //   return;
  //  }
  //  if (args is! String) {
  //   print('You must provide String args');
  //   return;
  // }
  coinName = args as String;
  setState(() {});
  super.didChangeDependencies();
     }
     
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '....'),
      ),
    );
  }
}
