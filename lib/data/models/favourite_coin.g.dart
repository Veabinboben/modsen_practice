// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_coin.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFavouriteCoinCollection on Isar {
  IsarCollection<FavouriteCoin> get favouriteCoins => this.collection();
}

const FavouriteCoinSchema = CollectionSchema(
  name: r'FavouriteCoin',
  id: 3905386524480338162,
  properties: {},
  estimateSize: _favouriteCoinEstimateSize,
  serialize: _favouriteCoinSerialize,
  deserialize: _favouriteCoinDeserialize,
  deserializeProp: _favouriteCoinDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'coin': LinkSchema(
      id: -999315086411170907,
      name: r'coin',
      target: r'Coin',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _favouriteCoinGetId,
  getLinks: _favouriteCoinGetLinks,
  attach: _favouriteCoinAttach,
  version: '3.1.8',
);

int _favouriteCoinEstimateSize(
  FavouriteCoin object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _favouriteCoinSerialize(
  FavouriteCoin object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
FavouriteCoin _favouriteCoinDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FavouriteCoin();
  object.isarId = id;
  return object;
}

P _favouriteCoinDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _favouriteCoinGetId(FavouriteCoin object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _favouriteCoinGetLinks(FavouriteCoin object) {
  return [object.coin];
}

void _favouriteCoinAttach(
    IsarCollection<dynamic> col, Id id, FavouriteCoin object) {
  object.isarId = id;
  object.coin.attach(col, col.isar.collection<Coin>(), r'coin', id);
}

extension FavouriteCoinQueryWhereSort
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QWhere> {
  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FavouriteCoinQueryWhere
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QWhereClause> {
  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterWhereClause> isarIdBetween(
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

extension FavouriteCoinQueryFilter
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QFilterCondition> {
  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
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

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
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

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
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
}

extension FavouriteCoinQueryObject
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QFilterCondition> {}

extension FavouriteCoinQueryLinks
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QFilterCondition> {
  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterFilterCondition> coin(
      FilterQuery<Coin> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'coin');
    });
  }

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterFilterCondition>
      coinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'coin', 0, true, 0, true);
    });
  }
}

extension FavouriteCoinQuerySortBy
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QSortBy> {}

extension FavouriteCoinQuerySortThenBy
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QSortThenBy> {
  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<FavouriteCoin, FavouriteCoin, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }
}

extension FavouriteCoinQueryWhereDistinct
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QDistinct> {}

extension FavouriteCoinQueryProperty
    on QueryBuilder<FavouriteCoin, FavouriteCoin, QQueryProperty> {
  QueryBuilder<FavouriteCoin, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }
}
