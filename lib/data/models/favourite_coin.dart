
import 'package:isar/isar.dart';

import '../../domain/models/coin_model.dart';

part 'favourite_coin.g.dart';

@collection
class FavouriteCoin{
  Id isarId = Isar.autoIncrement;
  IsarLink<Coin> coin = IsarLink<Coin>();

}