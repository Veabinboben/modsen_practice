import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:modsen_practice/domain/repository/abstract_crypto_repo.dart';
import 'package:modsen_practice/main.dart';

part 'crypto_list_state.dart';

class CryptoListCubit extends Cubit<CryptoListState>{
  CryptoListCubit(AbstractCryptoRepo repo) : _repo = repo, super (EmptyListState());

  late final AbstractCryptoRepo _repo;


  Future<void> getCoins() async{
    final int page = 1;
    emit(WaitingListState());
    final res = await _repo.coinsListMarketData(page: page);
    logger.i("Got coins");
    if  (res.isEmpty) emit(EmptyListState());
    else emit(GotListState(res,page));
  }

  Future<void> appendCoins() async{
    if (this.state is! GotListState) {
      emit(EmptyListState());
      return;
    }
      int page = (this.state as GotListState).page + 1;
      var coins = (this.state as GotListState).coins;
      final res = await _repo.coinsListMarketData(page: page);
      coins.addAll(res);
      logger.i("Got extendo coins");
      emit(GotListState(coins,page));
  }

}