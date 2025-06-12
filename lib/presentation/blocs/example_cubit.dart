import 'package:bloc/bloc.dart';
import 'package:modsen_practice/domain/repository/abstract_example_repo.dart';

class ExampleCubit extends Cubit<String>{
  ExampleCubit(AbstractExampleRepo repo) : _repo = repo, super ("Initial"){
    set();
  }

  late final AbstractExampleRepo _repo;

  Future<void> set() async{
    final String result = await _repo.getExample();
    emit(result);
  }

}