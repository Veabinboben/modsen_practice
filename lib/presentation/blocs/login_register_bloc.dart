import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
//import 'package:modsen_practice/data/models/user_model.dart';
//import 'package:modsen_practice/domain/repository/abstract_user_repo.dart';

part 'login_register_events.dart';

part 'login_register_state.dart';

class LoginRegisterBloc extends Bloc<LoginRegisterEvent, LoginRegisterState> {
  LoginRegisterBloc()
    :
      super(NotLoggedInState()) {
    on<TryLogInEvent>(_tryLogInEvent,transformer: sequential());
    on<TryRegisterEvent>(_tryRegisterEvent,transformer: sequential());
    on<StartWaitingEvent>(_startWaitingEvent,transformer: sequential());
    on<FinalizeLogInEvent>(_finalizeLogInEvent,transformer: sequential());
    on<FinalizeRegisterEvent>(_finalizeRegisterEvent,transformer: sequential());
    //on<TryQuickLogInEvent>(_tryQuickLogInEvent,transformer: sequential());
    //on<TryLogOutEvent>(_tryLogOutEvent,transformer: sequential());
  }


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
    emitter(TryingLogInState());
    //emitter(WaitingReplyState());
    // final result = await _repo.login(User(event.email, event.password));
    // if (result == true)
    //   emitter(SuccessfulLogInState());
    // else
    //   emitter(FailedLogInState());
  }

  Future<void> _finalizeLogInEvent(
      FinalizeLogInEvent event,
      Emitter<LoginRegisterState> emitter,
      ) async {
    if(event.success == true){
      emitter(SuccessfulLogInState());
    }
    else{
      emitter(FailedLogInState());
    }
  }


  Future<void> _tryRegisterEvent(
    TryRegisterEvent event,
    Emitter<LoginRegisterState> emitter,
  ) async {
    if (event.formValid == false) {
      emitter(InvalidFormState());
      return;
    }
    emitter(TryingRegisterState());
    // emitter(WaitingReplyState());
    // final result = await _repo.register(User(event.email, event.password));
    // if (result == true)
    //   emitter(SuccessfulRegisterState());
    // else
    //   emitter(FailedLogInState());
  }

  Future<void> _finalizeRegisterEvent(
      FinalizeRegisterEvent event,
      Emitter<LoginRegisterState> emitter,
      ) async {
    if(event.success == true){
      emitter(SuccessfulRegisterState());
    }
    else{
      emitter(FailedRegisterState());
    }
  }


  Future<void> _startWaitingEvent(
      StartWaitingEvent event,
      Emitter<LoginRegisterState> emitter,
      ) async {
    emitter(WaitingReplyState());
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
