import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvm_architecture/data/app_exceptions.dart';

import 'BaseApiServices.dart';
import 'Headers.dart';


class NetworkApiService extends BaseApiServices {
  @override
  Future getGetApiResponse(String url, {dynamic data, dynamic token}) async {
    dynamic responseJson;
    try {
      final response =
      await http.get(Uri.parse(url), headers: Headers.authenticatedHeader(token)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }



  @override
  Future getPostApiResponse(String url, {dynamic data, dynamic token}) async {
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url),  body: data, headers: Headers.authenticatedHeader(token))
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  @override
  Future getDeleteApiResponse(String url, {dynamic token}) async{
    dynamic responseJson;
    try {
      final response = await http
          .delete(Uri.parse(url), headers: Headers.authenticatedHeader(token))
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }




  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
      // 201 mean resource is created it is mostly used when some resource like User, Post etc is created on server
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
        throw UnauthorizedException("Email or Password is not correct");
      case 500:
      case 404:
        throw UnauthorizedException(response.body.toString());
      default:
        throw FetchDataException(
            "Error occurred while communicating with server with status code ${response.statusCode.toString()}");
    }
  }
}