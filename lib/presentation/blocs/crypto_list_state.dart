part of 'crypto_list_cubit.dart';

sealed class CryptoListState{
  const CryptoListState();
}

class EmptyListState extends CryptoListState{
  const EmptyListState() : super();
}

class TestState extends CryptoListState{
  String pingresp;
  TestState(this.pingresp) : super();
}

class GotListState extends CryptoListState{
  List<Coin> coins;
  GotListState(this.coins) : super();
}


