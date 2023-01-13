import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvp/src/presentation/cubit/sign_in/sign_in_state.dart';

import '../../../domain/usecase/sign_in/sign_in_usecase.dart';

class SignInCubit extends Cubit<SignInState> {
  final SignInUseCase signInUseCase;

  SignInCubit({required this.signInUseCase})
      : super(const SignInState.initial());

  Future<void> doSignIn() async {
    signInUseCase.call(SignInParams(userName: "userName"));
  }
}
