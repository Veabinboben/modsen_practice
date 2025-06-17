import 'package:bloc/bloc.dart';

import '../../data/models/user_model.dart';
import '../../domain/repository/abstract_user_repo.dart';

part "auth_state.dart";

class AuthCubit extends Cubit<AuthState>{
  AuthCubit(AbstractUserRepo repo) : _repo = repo, super (LoggedOutState());

  AbstractUserRepo _repo;

  Future<void> login (User user) async {
    final result = await _repo.login(user);
    if (result == true) {
      emit(LoggedInState());
    } else {
      emit(LogInFailedState());
    }
  }

  Future<void> register (User user) async {
    final result = await _repo.register(user);
    if (result == true)
      emit(RegisteredState());
    else
      emit(RegisterFailedState());
  }

  Future<void> logout () async {
    final result = await _repo.logout();
    if (result == true)
      emit(LoggedOutState());
    else
      emit(LogOutFailedState());
  }

  Future<void> quickLogin () async {
    final result = await _repo.quickLogin();
    if (result == true)
      emit(LoggedInState());
    else
      emit(LogInFailedState());
  }


}