
abstract class BaseApiServices{
  Future<dynamic> getGetApiResponse(String url, {dynamic data, dynamic token});
  Future<dynamic> getPostApiResponse(String url, {dynamic data, dynamic token});
  Future<dynamic> getDeleteApiResponse(String url, {dynamic token});
}
