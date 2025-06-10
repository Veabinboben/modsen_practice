import 'package:dio/dio.dart';
import 'package:modsen_practice/data/sources/remote.dart';
import 'package:modsen_practice/domain/repository/abstract_example_repo.dart';
import 'package:modsen_practice/main.dart';

class ConcreteExampleRepo implements AbstractExampleRepo{
  ConcreteExampleRepo(Dio dio){
    _source = RemoteSource(dio);
  }

  late final RemoteSource _source;

  @override
  Future<String> getExample() async {
    try {
      final String result = await _source.getDefault();
      return result;
    }
    on DioException catch (e){
      logger.e(e.message);
      return 'Error';
    }
  }

}