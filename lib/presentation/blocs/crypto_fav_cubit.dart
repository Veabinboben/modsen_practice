import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/models/coin_model.dart';
import 'package:modsen_practice/domain/repository/abstract_local_crypto_repo.dart';


part 'crypto_fav_state.dart';

class CryptoFavCubit extends Cubit<CryptoFavState> {
  CryptoFavCubit(AbstractLocalCryptoRepo localRepo)
      :_localRepo = localRepo,
        super (WaitingFavListState());

  late final AbstractLocalCryptoRepo _localRepo;

  Future<void> getFavList() async {
    emit(WaitingFavListState());
    final res = await _localRepo.getFavouriteCoinsListLastSnapshot();
    if (res.isNotEmpty){
      emit(GotFavListState(res));
    }
    else{
      emit(EmptyFavListState());
    }
  }

}