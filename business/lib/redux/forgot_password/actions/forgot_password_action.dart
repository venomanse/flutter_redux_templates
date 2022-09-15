import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../models/forgot_password_state.dart';

class ForgotPasswordAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(WaitAction.add(ForgotPasswordWaiting.wait));

  @override
  void after() => dispatchSync(WaitAction.remove(ForgotPasswordWaiting.wait));

  @override
  AppState? reduce() => null;
}
