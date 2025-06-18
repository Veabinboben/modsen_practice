part of 'quick_login_cubit.dart';

sealed class QuickLoginState{
  const QuickLoginState();
}

class InitQuickLoginState extends QuickLoginState{
  const InitQuickLoginState() : super();
}
class SuccessfulQuickLoginState extends QuickLoginState{
  const SuccessfulQuickLoginState() : super();
}

class FailedQuickLoginState extends QuickLoginState{
  const FailedQuickLoginState() : super();
}



