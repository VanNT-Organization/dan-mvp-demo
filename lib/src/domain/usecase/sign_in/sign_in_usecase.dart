import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/account.dart';
import '../../../data/repositories/sign_in_repository.dart';
import '../base_usecase.dart';

class SignInUseCase implements UseCase<Account, SignInParams> {
  final SignInRepository signInRepository;

  SignInUseCase({required this.signInRepository});

  @override
  Future<Either<Exception, Account>> call(params) {
    return signInRepository.doSignIn(params.userName);
  }

}
class SignInParams extends Equatable {
  final String userName;

  const SignInParams(
      {required this.userName,});

  @override
  List<Object?> get props => [userName];
}
