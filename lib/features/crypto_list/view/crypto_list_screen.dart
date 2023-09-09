
import 'package:crypto_coins_list/features/crypto_list/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
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
            return const CryptoCoinTile(coinName: coinName);
          }),
    );
  }
}

