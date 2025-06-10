import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'remote.g.dart';

@RestApi(baseUrl: 'https://www.example.com')
abstract class RemoteSource {
  factory RemoteSource(Dio dio, {String baseUrl}) = _RemoteSource;

  @GET('/')
  Future<String> getDefault();
}