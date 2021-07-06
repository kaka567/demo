import 'package:flutter_net_demo/kk_net/core/kk_net_adapter.dart';
import 'package:flutter_net_demo/kk_net/request/base_request.dart';

class KKNetMockAdapter extends KKNetAdapter {
  @override
  Future<KKNetResponse<T>> send<T>(BaseRequest request) {
    return Future<KKNetResponse>.delayed(Duration(milliseconds: 500), () {
      return KKNetResponse(
          data: {'code': 0, 'message': 'success'}, statusCode: 401);
    });
  }
}
