import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/models/coin_model.dart';

class CryptoListTile extends StatelessWidget {
  CryptoListTile(Coin coin, {super.key}) : _coin = coin;

  final Coin _coin;

  @override
  Widget build(BuildContext context) {
    //TODO add to themes
    //TODO add different currencies
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white12, // Border color
              width: 4, // Border width
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1, // Border width
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Shadow color
                  spreadRadius: 20, // Spread radius
                  blurRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CachedNetworkImage(imageUrl: _coin.image!, width: 40),
            ),
          ),
        ),
        subtitle: Text(_coin.symbol ?? "Nosymbol"),
        subtitleTextStyle: TextStyle(fontSize: 10),
        title: Text(_coin.name ?? "Noname"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        trailing: RichText(
          text: TextSpan(
            text: "\$${(_coin.currentPrice ?? 0).toStringAsFixed(2)}",
            children: [TextSpan(
              text: " (${(_coin.priceChange24h ?? 0) >= 0 ? '+' : '-'}\$${(_coin.priceChange24h ?? 0).abs().toStringAsFixed(2)})",
              style: TextStyle(color: (_coin.priceChange24h ?? 0) <= 0? Colors.red : Colors.lightGreen)
            )],
          ),
        ),
      ),
    );
  }
}
