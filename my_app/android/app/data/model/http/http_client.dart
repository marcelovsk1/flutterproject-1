import 'package:http/http.dart' as http;

abstract class IHttpClient {
  Future get({required String utl});
}

class HttpClient implements IHttpClient {
  final client = http.Client();

  @override
  Future get({required String utl}) {
    // TODO: implement get
    throw UnimplementedError();
  }
}
