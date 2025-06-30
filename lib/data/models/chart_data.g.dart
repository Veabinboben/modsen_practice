// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChartDataCollection on Isar {
  IsarCollection<ChartData> get chartDatas => this.collection();
}

const ChartDataSchema = CollectionSchema(
  name: r'ChartData',
  id: -2261134005854354433,
  properties: {
    r'flattenedPrices': PropertySchema(
      id: 0,
      name: r'flattenedPrices',
      type: IsarType.doubleList,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    )
  },
  estimateSize: _chartDataEstimateSize,
  serialize: _chartDataSerialize,
  deserialize: _chartDataDeserialize,
  deserializeProp: _chartDataDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _chartDataGetId,
  getLinks: _chartDataGetLinks,
  attach: _chartDataAttach,
  version: '3.1.8',
);

int _chartDataEstimateSize(
  ChartData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.flattenedPrices.length * 8;
  bytesCount += 3 + object.id.length * 3;
  return bytesCount;
}

void _chartDataSerialize(
  ChartData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDoubleList(offsets[0], object.flattenedPrices);
  writer.writeString(offsets[1], object.id);
}

ChartData _chartDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChartData(
    reader.readString(offsets[1]),
    reader.readDoubleList(offsets[0]) ?? [],
  );
  object.isarId = id;
  return object;
}

P _chartDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _chartDataGetId(ChartData object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _chartDataGetLinks(ChartData object) {
  return [];
}

void _chartDataAttach(IsarCollection<dynamic> col, Id id, ChartData object) {
  object.isarId = id;
}

extension ChartDataQueryWhereSort
    on QueryBuilder<ChartData, ChartData, QWhere> {
  QueryBuilder<ChartData, ChartData, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChartDataQueryWhere
    on QueryBuilder<ChartData, ChartData, QWhereClause> {
  QueryBuilder<ChartData, ChartData, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
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

  QueryBuilder<ChartData, ChartData, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterWhereClause> isarIdBetween(
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

extension ChartDataQueryFilter
    on QueryBuilder<ChartData, ChartData, QFilterCondition> {
  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesElementEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flattenedPrices',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesElementGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flattenedPrices',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesElementLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flattenedPrices',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesElementBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flattenedPrices',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flattenedPrices',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flattenedPrices',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flattenedPrices',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flattenedPrices',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flattenedPrices',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition>
      flattenedPricesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flattenedPrices',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idEqualTo(
    String value, {
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

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idGreaterThan(
    String value, {
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

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idLessThan(
    String value, {
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

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
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

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<ChartData, ChartData, QAfterFilterCondition> isarIdBetween(
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

extension ChartDataQueryObject
    on QueryBuilder<ChartData, ChartData, QFilterCondition> {}

extension ChartDataQueryLinks
    on QueryBuilder<ChartData, ChartData, QFilterCondition> {}

extension ChartDataQuerySortBy on QueryBuilder<ChartData, ChartData, QSortBy> {
  QueryBuilder<ChartData, ChartData, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension ChartDataQuerySortThenBy
    on QueryBuilder<ChartData, ChartData, QSortThenBy> {
  QueryBuilder<ChartData, ChartData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<ChartData, ChartData, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }
}

extension ChartDataQueryWhereDistinct
    on QueryBuilder<ChartData, ChartData, QDistinct> {
  QueryBuilder<ChartData, ChartData, QDistinct> distinctByFlattenedPrices() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flattenedPrices');
    });
  }

  QueryBuilder<ChartData, ChartData, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }
}

extension ChartDataQueryProperty
    on QueryBuilder<ChartData, ChartData, QQueryProperty> {
  QueryBuilder<ChartData, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<ChartData, List<double>, QQueryOperations>
      flattenedPricesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flattenedPrices');
    });
  }

  QueryBuilder<ChartData, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
