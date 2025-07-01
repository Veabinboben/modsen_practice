part of 'crypto_fav_cubit.dart';


sealed class CryptoFavState{
  const CryptoFavState();
}

class EmptyFavListState extends CryptoFavState{
  const EmptyFavListState() : super();
}

class WaitingFavListState extends CryptoFavState{
  const WaitingFavListState() : super();
}

class GotFavListState extends CryptoFavState{
  List<Coin> coins;
  GotFavListState(this.coins) : super();
}




