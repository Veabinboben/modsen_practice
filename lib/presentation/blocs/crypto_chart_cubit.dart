import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/repository/abstract_crypto_repo.dart';


part "crypto_chart_state.dart";

class CryptoChartCubit extends Cubit<CryptoChartState>{
  CryptoChartCubit(AbstractCryptoRepo repo) : _repo = repo, super (NoChartDataState());

  late final AbstractCryptoRepo _repo;

  Future<void> getChartData (String coinId) async{
    final res = await _repo.coinChartData(coinId);
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