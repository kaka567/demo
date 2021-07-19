import 'package:dio/dio.dart';
import 'package:flutter_net_demo/kk_net/core/kk_net_adapter.dart';
import 'package:flutter_net_demo/kk_net/core/kk_net_error.dart';
import 'package:flutter_net_demo/kk_net/request/base_request.dart';

class KKNetDioAdapter extends KKNetAdapter {
  @override
  Future<KKNetResponse<T>> send<T>(BaseRequest request) async {
    var response, options = Options(headers: request.header);
    var error;
    try {
      if (request.httpMethod() == HttpMethod.GET) {
        response = await Dio().get(request.url(), options: options);
      } else if (request.httpMethod() == HttpMethod.POST) {
        response = await Dio()
            .post(request.url(), data: request.params, options: options);
      }
    } on DioError catch (e) {
      print('请求失败：${e.response.data}');
      error = e;
      response = e.response;
    }
    if (error != null) {
      ///抛出HiNetError
      throw KKNetError(response?.statusCode ?? -1, error.toString(),
          data: buildRes(response, request));
    }
    return buildRes(response, request);
  }

  ///构建HiNetResponse
  KKNetResponse buildRes(Response response, BaseRequest request) {
    return KKNetResponse(
        data: response.data,
        request: request,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response);
  }
}
