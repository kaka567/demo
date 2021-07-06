import 'package:flutter_net_demo/kk_net/core/kk_net_adapter.dart';
import 'package:flutter_net_demo/kk_net/core/kk_net_dio_adapter.dart';
import 'package:flutter_net_demo/kk_net/core/kk_net_error.dart';
import 'package:flutter_net_demo/kk_net/request/base_request.dart';

class KKNet {
  KKNet._();
  static KKNet _instance;
  static KKNet getInstance() {
    if (_instance == null) {
      _instance = KKNet._();
    }
    return _instance;
  }

  Future fire(BaseRequest request) async {
    KKNetResponse response;
    var error;
    var result;
    try {
      response = await _send(request);
    } on KKNetError catch (e) {
      error = e;
      response = e.data;
      print('可识别错误类型：${e.message}');
    } catch (e) {
      error = e;
      print('不可识别错误类型：$e');
    }
    if (response == null) {
      print('结果为空，打印错误：$error');
    } else {
      result = response.data;
    }
    print('请求结果：$result');
    var statusCode = response.statusCode;
    switch (statusCode) {
      case 200:
        return result;
        break;
      case 401:
        throw NeedLogin();
        break;
      case 402:
        throw NeedAuth(result.toString(), data: result);
        break;
      default:
        throw KKNetError(statusCode, result.toString(), data: result);
        break;
    }
  }

  Future<KKNetResponse<T>> _send<T>(BaseRequest request) async {
    // KKNetAdapter adapter = KKNetMockAdapter();
    KKNetDioAdapter adapter = KKNetDioAdapter();
    return adapter.send(request);
  }
}
