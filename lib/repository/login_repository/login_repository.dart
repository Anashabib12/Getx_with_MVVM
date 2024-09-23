import 'package:getx_with_mvvm/data/network/network_api_service.dart';
import 'package:getx_with_mvvm/res/app_url/app_url.dart';

class LoginRepository {
  final NetworkApiService _apiService = NetworkApiService();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiService.postApi(data, AppUrl.loginAPi);
    return response;
  }
}
