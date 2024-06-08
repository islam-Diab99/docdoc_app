import 'package:dio/dio.dart';
import 'api_constants.dart';
import '../../features/login/data/models/login_response.dart';
import 'package:retrofit/http.dart';
import '../../features/login/data/models/login_request_body.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

// --------------------------------- Auth --------------------------------- //

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}