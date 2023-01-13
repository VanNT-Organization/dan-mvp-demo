import 'package:dio/dio.dart';
import 'package:mvp/src/data/model/account.dart';
import 'package:retrofit/retrofit.dart';

part 'sign_in_service.g.dart';

@RestApi()
abstract class SignInService {
  factory SignInService(Dio dio, {String baseUrl}) = _SignInService;

  @POST('/doSignIn')
  Future<HttpResponse<Account>> doSignIn(
      @Body() String userName);
}
