import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:modsen_practice/domain/repository/abstract_local_crypto_repo.dart';
import 'package:modsen_practice/domain/repository/abstract_remote_crypto_repo.dart';
import 'package:modsen_practice/main.dart';

part 'crypto_list_state.dart';

class CryptoListCubit extends Cubit<CryptoListState>{
  CryptoListCubit(AbstractRemoteCryptoRepo remoteRepo,AbstractLocalCryptoRepo localRepo) :
        _remoteRepo = remoteRepo,
        _localRepo = localRepo,
        super (EmptyListState());

  late final AbstractRemoteCryptoRepo _remoteRepo;
  late final AbstractLocalCryptoRepo _localRepo;


  Future<void> getCoins() async{
    final int page = 1;
    emit(WaitingListState());
    final res = await _remoteRepo.coinsListMarketData(page: page);
    logger.i("Got coins");
    if  (res.isEmpty) {
      final localRes = await _localRepo.getCoinsListLastSnapshot();
      if (localRes.isNotEmpty){
        emit(GotLocalSnapshotState(localRes));
      }
      else emit(EmptyListState());
    }
    else {
      _localRepo.saveCoinsListLastSnapshot(res);

      //await _localRepo.saveFavouriteCoin(res.first);
      //await _localRepo.deleteFavouriteCoin(res.first);
      emit(GotListState(res,page));
    }
  }

  Future<void> appendCoins() async{
    if (this.state is! GotListState) {
      emit(EmptyListState());
      return;
    }
      int page = (this.state as GotListState).page + 1;
      var coins = (this.state as GotListState).coins;
      final res = await _remoteRepo.coinsListMarketData(page: page);
      coins.addAll(res);
      logger.i("Got extendo coins");
      _localRepo.saveCoinsListLastSnapshot(res);
      emit(GotListState(coins,page));
  }

}