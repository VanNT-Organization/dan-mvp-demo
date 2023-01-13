import 'package:dartz/dartz.dart';
import 'package:mvp/src/data/model/account.dart';

import '../sources/remote/sign_in_remote_data_source.dart';

abstract class SignInRepository {
  Future<Either<Exception, Account>> doSignIn(String userName);
}

class SignInRepositoryImpl implements SignInRepository{
  final SignInRemoteDataSource signInRemoteDataSource;

  SignInRepositoryImpl({required this.signInRemoteDataSource});

  @override
  Future<Either<Exception, Account>> doSignIn(String userName) {
    return signInRemoteDataSource.doSignIn(userName);
  }

}