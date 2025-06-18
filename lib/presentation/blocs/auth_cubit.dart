import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/repository/abstract_user_repo.dart';

import '../../data/models/user_model.dart';

part "auth_state.dart";

class AuthCubit extends Cubit<AuthState>{
  AuthCubit(AbstractUserRepo repo) : _repo = repo, super (LoggedOutState());

  //AbstractLoginRegisterRepo _repo;

  late final AbstractUserRepo _repo;

  Future<void> login (User user) async {
    _repo.saveOrUpdateUser(user);
    emit(LoggedInState());
  }


  Future<void> quickLogin () async {
    emit(LoggedInState());
  }


  Future<void> logout () async {
    _repo.clearUser();
    emit(LoggedOutState());
  }

  // Future<void> quickLogin () async {
  //   final result = await _repo.quickLogin();
  //   if (result == true)
  //     emit(LoggedInState());
  //   else
  //     emit(LogInFailedState());
  // }


}