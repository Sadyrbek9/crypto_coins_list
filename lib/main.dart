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
      home: const MyHomePage(title: 'Crypto Currenciest List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text("Crypto Currenciest List")),
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset(
            'assets/svg/bitcoin_logo3.svg',
            height: 30,
            width: 30,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          title: Text(
            'Bitcoin',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '2000\$',
            style: theme.textTheme.labelSmall,
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
