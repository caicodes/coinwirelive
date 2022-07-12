import 'package:flutter/material.dart';

/// Displays detailed information about a Coin.
class CoinDetailsView extends StatelessWidget {
  const CoinDetailsView({Key? key}) : super(key: key);

  static const routeName = '/coin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coin Details'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Text(
              'More Information and live data on this coin coming soon to be shown here!'),
        ),
      ),
    );
  }
}
