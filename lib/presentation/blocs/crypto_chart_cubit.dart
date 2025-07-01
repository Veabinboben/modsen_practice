import 'package:bloc/bloc.dart';
import 'package:modsen_practice/consts.dart';
import 'package:modsen_practice/domain/repository/abstract_local_crypto_repo.dart';
import 'package:modsen_practice/domain/repository/abstract_remote_crypto_repo.dart';

import '../../domain/models/coin_model.dart';


part "crypto_chart_state.dart";

class CryptoChartCubit extends Cubit<CryptoChartState>{
  CryptoChartCubit(AbstractRemoteCryptoRepo remoteRepo,AbstractLocalCryptoRepo localRepo) :
        _remoteRepo = remoteRepo,
        _localRepo = localRepo,
        super (WaitingChartDataState());

  late final AbstractRemoteCryptoRepo _remoteRepo;
  late final AbstractLocalCryptoRepo _localRepo;

  Future<void> getChartData (String coinId,{double days = 1}) async{
    emit(WaitingChartDataState());
    final res = await _remoteRepo.coinChartData(coinId,days: days);
    if (res.isEmpty){
      final localres = await _localRepo.getCoinChartDataLastSnapshot(coinId);
      if (localres.isNotEmpty){
        emit(GotChartDataState(localres,true));
      }
      else
        emit(NoChartDataState());
    }
    else
    {
      await _localRepo.saveCoinChartDataLastSnapshot(res,coinId);
      emit(GotChartDataState(res,false));
    }
  }

  Future<void> addToFavourite(Coin coin) async{
    await _localRepo.saveFavouriteCoin(coin);
  }
  Future<void> removeFromFavourite(Coin coin) async{
    await _localRepo.deleteFavouriteCoin(coin);
  }
  Future<bool> isFavourite(Coin coin) async{
    final res = await _localRepo.checkIfFavouriteCoin(coin);
    return res;
  }



// Future<void> quickLogin () async {
//   final result = await _repo.quickLogin();
//   if (result == true)
//     emit(LoggedInState());
//   else
//     emit(LogInFailedState());
// }


}