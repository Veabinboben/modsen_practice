import 'package:modsen_practice/data/sources/local_biometry_source.dart';
import 'package:modsen_practice/domain/repository/abstract_biometry_repo.dart';

class BiometryRepo extends AbstractBiometryRepo{

  BiometryRepo(AbstractBiometrySource source) : _source= source;

  late final AbstractBiometrySource _source;

  @override
  Future<bool> authUsingBiometry() async {
    final result = await _source.auth();
    return result;
  }

}