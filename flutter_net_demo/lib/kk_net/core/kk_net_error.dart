class KKNetError implements Exception {
  final int code;
  final String message;
  final dynamic data;

  KKNetError(this.code, this.message, {this.data});
}

class NeedLogin extends KKNetError {
  NeedLogin({int code = 401, String message: '请先登录'}) : super(code, message);
}

class NeedAuth extends KKNetError {
  NeedAuth(String message, {int code: 403, dynamic data})
      : super(code, message, data: data);
}
