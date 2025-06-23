part of 'crypto_list_cubit.dart';

sealed class CryptoListState{
  const CryptoListState();
}

class EmptyListState extends CryptoListState{
  const EmptyListState() : super();
}

class WaitingListState extends CryptoListState{
  const WaitingListState() : super();
}

class GotListState extends CryptoListState{
  List<Coin> coins;
  int page;
  GotListState(this.coins,this.page) : super();
}


