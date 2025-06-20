import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import '../../data/models/user_model.dart';
import '../../domain/repository/abstract_login_register_repo.dart';
//import 'package:modsen_practice/data/models/user_model.dart';
//import 'package:modsen_practice/domain/repository/abstract_login_register_repo.dart';

part 'login_register_events.dart';

part 'login_register_state.dart';

class LoginRegisterBloc extends Bloc<LoginRegisterEvent, LoginRegisterState> {
  LoginRegisterBloc(AbstractLoginRegisterRepo repo)
    :
      _repo = repo,
      super(NotLoggedInState()) {
    on<TryLogInEvent>(_tryLogInEvent,transformer: droppable());
    on<TryRegisterEvent>(_tryRegisterEvent,transformer: droppable());
    // on<StartWaitingEvent>(_startWaitingEvent,transformer: sequential());
    // on<FinalizeLogInEvent>(_finalizeLogInEvent,transformer: sequential());
    // on<FinalizeRegisterEvent>(_finalizeRegisterEvent,transformer: sequential());
    //on<TryQuickLogInEvent>(_tryQuickLogInEvent,transformer: sequential());
    //on<TryLogOutEvent>(_tryLogOutEvent,transformer: sequential());
  }

  late final AbstractLoginRegisterRepo _repo;

  //Template
  //_name(Event event, Emitter<LoginState> emitter) async{

  // Future<void> _tryLogOutEvent (TryLogOutEvent event, Emitter<LoginRegisterState> emitter) async {
  //   emitter(WaitingReplyState());
  //   var result = await _repo.logout();
  //   if (result == true)
  //     emitter(NotLoggedInState());
  //   else
  //     emitter(FailedLogOutState());
  // }

  Future<void> _tryLogInEvent(
    TryLogInEvent event,
    Emitter<LoginRegisterState> emitter,
  ) async {
    if (event.formValid == false) {
      emitter(InvalidFormState());
      return;
    }
    emitter(WaitingReplyState());
    final result = await _repo.login(User(event.email, event.password));
    if (result == true)
      emitter(SuccessfulLogInState());
    else
      emitter(FailedLogInState());
  }



  Future<void> _tryRegisterEvent(
    TryRegisterEvent event,
    Emitter<LoginRegisterState> emitter,
  ) async {
    if (event.formValid == false) {
      emitter(InvalidFormState());
      return;
    }
    emitter(WaitingReplyState());
    final result = await _repo.register(User(event.email, event.password));
    if (result == true)
      emitter(SuccessfulRegisterState());
    else
      emitter(FailedLogInState());
  }


  // Future<void> _tryQuickLogInEvent(
  //     TryQuickLogInEvent event,
  //     Emitter<LoginRegisterState> emitter,
  //     ) async {
  //     var result = await _repo.quickLogin();
  //     if (result == true)
  //       emitter(SuccessfulLogInState());
  //     else
  //       emitter(NotLoggedInState());
  // }

}
