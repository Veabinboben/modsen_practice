import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:modsen_practice/domain/repository/abstract_crypto_repo.dart';

part 'crypto_list_state.dart';

class CryptoListCubit extends Cubit<CryptoListState>{
  CryptoListCubit(AbstractCryptoRepo repo) : _repo = repo, super (EmptyListState());

  late final AbstractCryptoRepo _repo;

  Future<void> ping() async{
    final res = await _repo.test();
    emit(TestState(res));
  }

  Future<void> getCoins() async{
    final res = await _repo.coinsListMarketData();
    emit(GotListState(res));
  }

}