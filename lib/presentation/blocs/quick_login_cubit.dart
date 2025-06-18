import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/repository/abstract_biometry_repo.dart';
import 'package:modsen_practice/domain/repository/abstract_user_repo.dart';

part 'quick_login_state.dart';

class QuickLoginCubit extends Cubit<QuickLoginState>{
  QuickLoginCubit(AbstractUserRepo userRepo, AbstractBiometryRepo biometryRepo) :
        _userRepo = userRepo,
        _biometryRepo = biometryRepo,
        super(InitQuickLoginState());

  late final AbstractUserRepo _userRepo;
  late final AbstractBiometryRepo _biometryRepo;

  Future<void> login() async{
    try{
      final user = await _userRepo.getUser();
      if (user == null) {
        emit(FailedQuickLoginState());
      }
      else{
       final didAuth = await _biometryRepo.authUsingBiometry();
       if (didAuth == true){
         emit(SuccessfulQuickLoginState());
       }
       else{
         emit(FailedQuickLoginState());
       }
      }
    }
    catch (e){
      emit(FailedQuickLoginState());
    }
  }

}