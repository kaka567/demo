import 'dart:convert';

import 'package:flutter_net_demo/kk_net/request/base_request.dart';

abstract class KKNetAdapter {
  Future<KKNetResponse<T>> send<T>(BaseRequest request);
}

/// 统一网络层返回格式
class KKNetResponse<T> {
  T data;
  BaseRequest request;
  int statusCode;
  String statusMessage;
  dynamic extra;
  KKNetResponse(
      {this.data,
      this.request,
      this.statusCode,
      this.statusMessage,
      this.extra});

  @override
  String toString() {
    if (data is Map) return json.encode(data);
    return data.toString();
  }
}
