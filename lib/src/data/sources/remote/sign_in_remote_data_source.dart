import 'package:dartz/dartz.dart';

import '../../model/account.dart';
import '../../service/sign_in_service.dart';

abstract class SignInRemoteDataSource {
  Future<Either<Exception, Account>> doSignIn(String userName);
}

class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  SignInService signInService;
  SignInRemoteDataSourceImpl({required this.signInService});

  @override
  Future<Either<Exception, Account>> doSignIn(String userName) async{
    try {
      final response = await signInService.doSignIn(userName);
      return Right(response.data);
    } on Exception catch (error) {
      return Left(error);
    }
  }

}