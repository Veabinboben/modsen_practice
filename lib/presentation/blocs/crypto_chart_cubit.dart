import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/repository/abstract_local_crypto_repo.dart';
import 'package:modsen_practice/domain/repository/abstract_remote_crypto_repo.dart';


part "crypto_chart_state.dart";

class CryptoChartCubit extends Cubit<CryptoChartState>{
  CryptoChartCubit(AbstractRemoteCryptoRepo remoteRepo,AbstractLocalCryptoRepo localRepo) :
        _remoteRepo = remoteRepo,
        _localRepo = localRepo,
        super (NoChartDataState());

  late final AbstractRemoteCryptoRepo _remoteRepo;
  late final AbstractLocalCryptoRepo _localRepo;

  Future<void> getChartData (String coinId) async{
    final res = await _remoteRepo.coinChartData(coinId);
    emit(GotChartDataState(res));
  }

// Future<void> quickLogin () async {
//   final result = await _repo.quickLogin();
//   if (result == true)
//     emit(LoggedInState());
//   else
//     emit(LogInFailedState());
// }


}