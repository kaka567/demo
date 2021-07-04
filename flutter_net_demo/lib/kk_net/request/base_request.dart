enum HttpMethod { GET, POST }

abstract class BaseRequest {
  // 是否使用https
  bool useHttps = true;
  // path参数
  String? pathParams;
  // query参数
  Map<String, dynamic> params = Map();
  // header
  Map<String, dynamic> header = Map();
  String authority() {
    return 'api.devio.org';
  }

  HttpMethod httpMethod();
  bool needLogin();
  String path();
  BaseRequest add(String key, dynamic value) {
    params[key] = value;
    return this;
  }

  BaseRequest addHeader(String key, dynamic value) {
    header[key] = value;
    return this;
  }

  String url() {
    Uri uri;
    var pathStr = path();

    // 拼接path参数
    if (pathParams != null) {
      // 兼容path参数有无 / 的情况
      if (pathStr.endsWith('/')) {
        pathStr = '$pathStr$pathParams';
      } else {
        pathStr = '$pathStr/$pathParams';
      }
    }

    // http 和 https 切换
    if (useHttps) {
      uri = Uri.http(authority(), pathStr, params);
    } else {
      uri = Uri.https(authority(), pathStr, params);
    }

    return uri.toString();
  }
}
