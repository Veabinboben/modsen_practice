import 'package:bloc/bloc.dart';
import 'package:modsen_practice/data/models/user_model.dart';
import 'package:modsen_practice/domain/repository/abstract_user_repo.dart';

part 'login_register_events.dart';

part 'login_register_state.dart';

class LoginRegisterBloc extends Bloc<LoginRegisterEvent, LoginRegisterState> {
  LoginRegisterBloc(AbstractUserRepo repo)
    : _repo = repo,
      super(NotLoggedInState()) {
    on<TryLogInEvent>(_tryLogInEvent);
    on<TryRegisterEvent>(_tryRegisterEvent);
    on<TryQuickLogInEvent>(_tryQuickLogInEvent);
  }

  AbstractUserRepo _repo;

  //Template
  //_name(Event event, Emitter<LoginState> emitter) async{

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
      emitter(SuccessfulLogInState());
    else
      emitter(FailedLogInState());
  }

  Future<void> _tryQuickLogInEvent(
      TryQuickLogInEvent event,
      Emitter<LoginRegisterState> emitter,
      ) async {
      var result = await _repo.quickLogin();
      if (result == true)
        emitter(SuccessfulLogInState());
      else
        emitter(NotLoggedInState());
  }

}
