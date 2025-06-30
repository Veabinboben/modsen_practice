// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCoinCollection on Isar {
  IsarCollection<Coin> get coins => this.collection();
}

const CoinSchema = CollectionSchema(
  name: r'Coin',
  id: -4922709809844936540,
  properties: {
    r'ath': PropertySchema(
      id: 0,
      name: r'ath',
      type: IsarType.double,
    ),
    r'athChangePercentage': PropertySchema(
      id: 1,
      name: r'athChangePercentage',
      type: IsarType.double,
    ),
    r'athDate': PropertySchema(
      id: 2,
      name: r'athDate',
      type: IsarType.string,
    ),
    r'atl': PropertySchema(
      id: 3,
      name: r'atl',
      type: IsarType.double,
    ),
    r'atlChangePercentage': PropertySchema(
      id: 4,
      name: r'atlChangePercentage',
      type: IsarType.double,
    ),
    r'atlDate': PropertySchema(
      id: 5,
      name: r'atlDate',
      type: IsarType.string,
    ),
    r'circulatingSupply': PropertySchema(
      id: 6,
      name: r'circulatingSupply',
      type: IsarType.double,
    ),
    r'currentPrice': PropertySchema(
      id: 7,
      name: r'currentPrice',
      type: IsarType.double,
    ),
    r'fullyDilutedValuation': PropertySchema(
      id: 8,
      name: r'fullyDilutedValuation',
      type: IsarType.long,
    ),
    r'high24h': PropertySchema(
      id: 9,
      name: r'high24h',
      type: IsarType.double,
    ),
    r'id': PropertySchema(
      id: 10,
      name: r'id',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 11,
      name: r'image',
      type: IsarType.string,
    ),
    r'lastUpdated': PropertySchema(
      id: 12,
      name: r'lastUpdated',
      type: IsarType.string,
    ),
    r'low24h': PropertySchema(
      id: 13,
      name: r'low24h',
      type: IsarType.double,
    ),
    r'marketCap': PropertySchema(
      id: 14,
      name: r'marketCap',
      type: IsarType.double,
    ),
    r'marketCapChange24h': PropertySchema(
      id: 15,
      name: r'marketCapChange24h',
      type: IsarType.double,
    ),
    r'marketCapChangePercentage24h': PropertySchema(
      id: 16,
      name: r'marketCapChangePercentage24h',
      type: IsarType.double,
    ),
    r'marketCapRank': PropertySchema(
      id: 17,
      name: r'marketCapRank',
      type: IsarType.long,
    ),
    r'maxSupply': PropertySchema(
      id: 18,
      name: r'maxSupply',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 19,
      name: r'name',
      type: IsarType.string,
    ),
    r'platforms': PropertySchema(
      id: 20,
      name: r'platforms',
      type: IsarType.string,
    ),
    r'priceChange24h': PropertySchema(
      id: 21,
      name: r'priceChange24h',
      type: IsarType.double,
    ),
    r'priceChangePercentage24h': PropertySchema(
      id: 22,
      name: r'priceChangePercentage24h',
      type: IsarType.double,
    ),
    r'symbol': PropertySchema(
      id: 23,
      name: r'symbol',
      type: IsarType.string,
    ),
    r'totalSupply': PropertySchema(
      id: 24,
      name: r'totalSupply',
      type: IsarType.double,
    ),
    r'totalVolume': PropertySchema(
      id: 25,
      name: r'totalVolume',
      type: IsarType.long,
    )
  },
  estimateSize: _coinEstimateSize,
  serialize: _coinSerialize,
  deserialize: _coinDeserialize,
  deserializeProp: _coinDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _coinGetId,
  getLinks: _coinGetLinks,
  attach: _coinAttach,
  version: '3.1.8',
);

int _coinEstimateSize(
  Coin object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.athDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.atlDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastUpdated;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.platforms;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.symbol;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _coinSerialize(
  Coin object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.ath);
  writer.writeDouble(offsets[1], object.athChangePercentage);
  writer.writeString(offsets[2], object.athDate);
  writer.writeDouble(offsets[3], object.atl);
  writer.writeDouble(offsets[4], object.atlChangePercentage);
  writer.writeString(offsets[5], object.atlDate);
  writer.writeDouble(offsets[6], object.circulatingSupply);
  writer.writeDouble(offsets[7], object.currentPrice);
  writer.writeLong(offsets[8], object.fullyDilutedValuation);
  writer.writeDouble(offsets[9], object.high24h);
  writer.writeString(offsets[10], object.id);
  writer.writeString(offsets[11], object.image);
  writer.writeString(offsets[12], object.lastUpdated);
  writer.writeDouble(offsets[13], object.low24h);
  writer.writeDouble(offsets[14], object.marketCap);
  writer.writeDouble(offsets[15], object.marketCapChange24h);
  writer.writeDouble(offsets[16], object.marketCapChangePercentage24h);
  writer.writeLong(offsets[17], object.marketCapRank);
  writer.writeDouble(offsets[18], object.maxSupply);
  writer.writeString(offsets[19], object.name);
  writer.writeString(offsets[20], object.platforms);
  writer.writeDouble(offsets[21], object.priceChange24h);
  writer.writeDouble(offsets[22], object.priceChangePercentage24h);
  writer.writeString(offsets[23], object.symbol);
  writer.writeDouble(offsets[24], object.totalSupply);
  writer.writeLong(offsets[25], object.totalVolume);
}

Coin _coinDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Coin(
    reader.readStringOrNull(offsets[10]),
    reader.readStringOrNull(offsets[23]),
    reader.readStringOrNull(offsets[19]),
    reader.readStringOrNull(offsets[11]),
    reader.readDoubleOrNull(offsets[7]),
    reader.readDoubleOrNull(offsets[14]),
    reader.readLongOrNull(offsets[17]),
    reader.readLongOrNull(offsets[8]),
    reader.readLongOrNull(offsets[25]),
    reader.readDoubleOrNull(offsets[9]),
    reader.readDoubleOrNull(offsets[13]),
    reader.readDoubleOrNull(offsets[21]),
    reader.readDoubleOrNull(offsets[22]),
    reader.readDoubleOrNull(offsets[15]),
    reader.readDoubleOrNull(offsets[16]),
    reader.readDoubleOrNull(offsets[6]),
    reader.readDoubleOrNull(offsets[24]),
    reader.readDoubleOrNull(offsets[18]),
    reader.readDoubleOrNull(offsets[0]),
    reader.readDoubleOrNull(offsets[1]),
    reader.readStringOrNull(offsets[2]),
    reader.readDoubleOrNull(offsets[3]),
    reader.readDoubleOrNull(offsets[4]),
    reader.readStringOrNull(offsets[5]),
    reader.readStringOrNull(offsets[12]),
    reader.readStringOrNull(offsets[20]),
  );
  object.isarId = id;
  return object;
}

P _coinDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readDoubleOrNull(offset)) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readDoubleOrNull(offset)) as P;
    case 25:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _coinGetId(Coin object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _coinGetLinks(Coin object) {
  return [];
}

void _coinAttach(IsarCollection<dynamic> col, Id id, Coin object) {
  object.isarId = id;
}

extension CoinQueryWhereSort on QueryBuilder<Coin, Coin, QWhere> {
  QueryBuilder<Coin, Coin, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CoinQueryWhere on QueryBuilder<Coin, Coin, QWhereClause> {
  QueryBuilder<Coin, Coin, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Coin, Coin, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Coin, Coin, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Coin, Coin, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CoinQueryFilter on QueryBuilder<Coin, Coin, QFilterCondition> {
  QueryBuilder<Coin, Coin, QAfterFilterCondition> athIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ath',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ath',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ath',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ath',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ath',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athChangePercentageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'athChangePercentage',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      athChangePercentageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'athChangePercentage',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athChangePercentageEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'athChangePercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      athChangePercentageGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'athChangePercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athChangePercentageLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'athChangePercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athChangePercentageBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'athChangePercentage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'athDate',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'athDate',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'athDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'athDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'athDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'athDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'atl',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'atl',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'atl',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'atl',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'atl',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'atl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlChangePercentageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'atlChangePercentage',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      atlChangePercentageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'atlChangePercentage',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlChangePercentageEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'atlChangePercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      atlChangePercentageGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'atlChangePercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlChangePercentageLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'atlChangePercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlChangePercentageBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'atlChangePercentage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'atlDate',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'atlDate',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'atlDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'atlDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'atlDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'atlDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'circulatingSupply',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'circulatingSupply',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'circulatingSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'circulatingSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'circulatingSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'circulatingSupply',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentPrice',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentPrice',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      fullyDilutedValuationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fullyDilutedValuation',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      fullyDilutedValuationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fullyDilutedValuation',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> fullyDilutedValuationEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullyDilutedValuation',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      fullyDilutedValuationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullyDilutedValuation',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> fullyDilutedValuationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullyDilutedValuation',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> fullyDilutedValuationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullyDilutedValuation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> high24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'high24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> high24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'high24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> high24hEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'high24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> high24hGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'high24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> high24hLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'high24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> high24hBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'high24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> isarIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> isarIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> isarIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastUpdated',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastUpdated',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastUpdated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastUpdated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastUpdated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastUpdated',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdated',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> lastUpdatedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastUpdated',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> low24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'low24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> low24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'low24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> low24hEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'low24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> low24hGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'low24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> low24hLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'low24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> low24hBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'low24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marketCap',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marketCap',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marketCap',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marketCap',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marketCap',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marketCap',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapChange24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marketCapChange24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChange24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marketCapChange24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapChange24hEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marketCapChange24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapChange24hGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marketCapChange24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapChange24hLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marketCapChange24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapChange24hBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marketCapChange24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChangePercentage24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marketCapChangePercentage24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChangePercentage24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marketCapChangePercentage24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChangePercentage24hEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marketCapChangePercentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChangePercentage24hGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marketCapChangePercentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChangePercentage24hLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marketCapChangePercentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChangePercentage24hBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marketCapChangePercentage24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marketCapRank',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marketCapRank',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marketCapRank',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marketCapRank',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marketCapRank',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marketCapRank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxSupply',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxSupply',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxSupply',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'platforms',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'platforms',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'platforms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'platforms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'platforms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'platforms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'platforms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'platforms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'platforms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'platforms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'platforms',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> platformsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'platforms',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> priceChange24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceChange24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> priceChange24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceChange24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> priceChange24hEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceChange24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> priceChange24hGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceChange24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> priceChange24hLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceChange24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> priceChange24hBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceChange24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      priceChangePercentage24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceChangePercentage24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      priceChangePercentage24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceChangePercentage24h',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      priceChangePercentage24hEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceChangePercentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      priceChangePercentage24hGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceChangePercentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      priceChangePercentage24hLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceChangePercentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      priceChangePercentage24hBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceChangePercentage24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'symbol',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'symbol',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'symbol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'symbol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'symbol',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'symbol',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalSupply',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalSupply',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalSupply',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalVolumeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalVolume',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalVolumeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalVolume',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalVolumeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalVolumeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalVolumeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalVolumeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalVolume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CoinQueryObject on QueryBuilder<Coin, Coin, QFilterCondition> {}

extension CoinQueryLinks on QueryBuilder<Coin, Coin, QFilterCondition> {}

extension CoinQuerySortBy on QueryBuilder<Coin, Coin, QSortBy> {
  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ath', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ath', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAthChangePercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athChangePercentage', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAthChangePercentageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athChangePercentage', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAtl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atl', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAtlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atl', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAtlChangePercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlChangePercentage', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAtlChangePercentageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlChangePercentage', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAtlDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAtlDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByCirculatingSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circulatingSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByCirculatingSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circulatingSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByCurrentPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPrice', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByCurrentPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPrice', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByFullyDilutedValuation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullyDilutedValuation', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByFullyDilutedValuationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullyDilutedValuation', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByHigh24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'high24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByHigh24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'high24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByLow24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'low24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByLow24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'low24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCap', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCap', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapChange24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChange24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapChange24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChange24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapChangePercentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChangePercentage24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy>
      sortByMarketCapChangePercentage24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChangePercentage24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapRank', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapRank', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMaxSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMaxSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByPlatforms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'platforms', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByPlatformsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'platforms', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByPriceChange24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceChange24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByPriceChange24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceChange24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByPriceChangePercentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceChangePercentage24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByPriceChangePercentage24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceChangePercentage24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortBySymbol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'symbol', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortBySymbolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'symbol', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByTotalSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByTotalSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByTotalVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVolume', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByTotalVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVolume', Sort.desc);
    });
  }
}

extension CoinQuerySortThenBy on QueryBuilder<Coin, Coin, QSortThenBy> {
  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ath', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ath', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAthChangePercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athChangePercentage', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAthChangePercentageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athChangePercentage', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAtl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atl', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAtlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atl', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAtlChangePercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlChangePercentage', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAtlChangePercentageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlChangePercentage', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAtlDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAtlDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByCirculatingSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circulatingSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByCirculatingSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circulatingSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByCurrentPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPrice', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByCurrentPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPrice', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByFullyDilutedValuation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullyDilutedValuation', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByFullyDilutedValuationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullyDilutedValuation', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByHigh24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'high24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByHigh24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'high24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByLow24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'low24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByLow24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'low24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCap', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCap', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapChange24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChange24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapChange24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChange24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapChangePercentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChangePercentage24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy>
      thenByMarketCapChangePercentage24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChangePercentage24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapRank', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapRank', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMaxSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMaxSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByPlatforms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'platforms', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByPlatformsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'platforms', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByPriceChange24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceChange24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByPriceChange24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceChange24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByPriceChangePercentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceChangePercentage24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByPriceChangePercentage24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceChangePercentage24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenBySymbol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'symbol', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenBySymbolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'symbol', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByTotalSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByTotalSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByTotalVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVolume', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByTotalVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVolume', Sort.desc);
    });
  }
}

extension CoinQueryWhereDistinct on QueryBuilder<Coin, Coin, QDistinct> {
  QueryBuilder<Coin, Coin, QDistinct> distinctByAth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ath');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByAthChangePercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'athChangePercentage');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByAthDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'athDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByAtl() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'atl');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByAtlChangePercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'atlChangePercentage');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByAtlDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'atlDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByCirculatingSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'circulatingSupply');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByCurrentPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentPrice');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByFullyDilutedValuation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullyDilutedValuation');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByHigh24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'high24h');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByLastUpdated(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdated', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByLow24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'low24h');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByMarketCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marketCap');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByMarketCapChange24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marketCapChange24h');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByMarketCapChangePercentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marketCapChangePercentage24h');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByMarketCapRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marketCapRank');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByMaxSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxSupply');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByPlatforms(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'platforms', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByPriceChange24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceChange24h');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByPriceChangePercentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceChangePercentage24h');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctBySymbol(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'symbol', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByTotalSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalSupply');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByTotalVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalVolume');
    });
  }
}

extension CoinQueryProperty on QueryBuilder<Coin, Coin, QQueryProperty> {
  QueryBuilder<Coin, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> athProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ath');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> athChangePercentageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'athChangePercentage');
    });
  }

  QueryBuilder<Coin, String?, QQueryOperations> athDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'athDate');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> atlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'atl');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> atlChangePercentageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'atlChangePercentage');
    });
  }

  QueryBuilder<Coin, String?, QQueryOperations> atlDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'atlDate');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> circulatingSupplyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'circulatingSupply');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> currentPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentPrice');
    });
  }

  QueryBuilder<Coin, int?, QQueryOperations> fullyDilutedValuationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullyDilutedValuation');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> high24hProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'high24h');
    });
  }

  QueryBuilder<Coin, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Coin, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<Coin, String?, QQueryOperations> lastUpdatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdated');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> low24hProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'low24h');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> marketCapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marketCap');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> marketCapChange24hProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marketCapChange24h');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations>
      marketCapChangePercentage24hProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marketCapChangePercentage24h');
    });
  }

  QueryBuilder<Coin, int?, QQueryOperations> marketCapRankProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marketCapRank');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> maxSupplyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxSupply');
    });
  }

  QueryBuilder<Coin, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Coin, String?, QQueryOperations> platformsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'platforms');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> priceChange24hProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceChange24h');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations>
      priceChangePercentage24hProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceChangePercentage24h');
    });
  }

  QueryBuilder<Coin, String?, QQueryOperations> symbolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'symbol');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> totalSupplyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalSupply');
    });
  }

  QueryBuilder<Coin, int?, QQueryOperations> totalVolumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalVolume');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coin _$CoinFromJson(Map<String, dynamic> json) => Coin(
      json['id'] as String?,
      json['symbol'] as String?,
      json['name'] as String?,
      json['image'] as String?,
      (json['current_price'] as num?)?.toDouble(),
      (json['market_cap'] as num?)?.toDouble(),
      (json['market_cap_rank'] as num?)?.toInt(),
      (json['fully_diluted_valuation'] as num?)?.toInt(),
      (json['total_volume'] as num?)?.toInt(),
      (json['high_24h'] as num?)?.toDouble(),
      (json['low_24h'] as num?)?.toDouble(),
      (json['price_change_24h'] as num?)?.toDouble(),
      (json['price_change_percentage_24h'] as num?)?.toDouble(),
      (json['market_cap_change_24h'] as num?)?.toDouble(),
      (json['market_cap_change_percentage_24h'] as num?)?.toDouble(),
      (json['circulating_supply'] as num?)?.toDouble(),
      (json['total_supply'] as num?)?.toDouble(),
      (json['max_supply'] as num?)?.toDouble(),
      (json['ath'] as num?)?.toDouble(),
      (json['ath_change_percentage'] as num?)?.toDouble(),
      json['ath_date'] as String?,
      (json['atl'] as num?)?.toDouble(),
      (json['atl_change_percentage'] as num?)?.toDouble(),
      json['atl_date'] as String?,
      json['lastUpdated'] as String?,
      json['platforms'] as String?,
    )..isarId = (json['isarId'] as num?)?.toInt();

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
      'isarId': instance.isarId,
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'market_cap': instance.marketCap,
      'market_cap_rank': instance.marketCapRank,
      'fully_diluted_valuation': instance.fullyDilutedValuation,
      'total_volume': instance.totalVolume,
      'high_24h': instance.high24h,
      'low_24h': instance.low24h,
      'price_change_24h': instance.priceChange24h,
      'price_change_percentage_24h': instance.priceChangePercentage24h,
      'market_cap_change_24h': instance.marketCapChange24h,
      'market_cap_change_percentage_24h': instance.marketCapChangePercentage24h,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'max_supply': instance.maxSupply,
      'ath': instance.ath,
      'ath_change_percentage': instance.athChangePercentage,
      'ath_date': instance.athDate,
      'atl': instance.atl,
      'atl_change_percentage': instance.atlChangePercentage,
      'atl_date': instance.atlDate,
      'lastUpdated': instance.lastUpdated,
      'platforms': instance.platforms,
    };
