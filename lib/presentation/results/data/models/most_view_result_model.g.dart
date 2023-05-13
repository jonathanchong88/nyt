// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_view_result_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMostViewResultModelCollection on Isar {
  IsarCollection<MostViewResultModel> get mostViewResultModels =>
      this.collection();
}

const MostViewResultModelSchema = CollectionSchema(
  name: r'MostViewResultModel',
  id: 9093759759006187365,
  properties: {
    r'copyright': PropertySchema(
      id: 0,
      name: r'copyright',
      type: IsarType.string,
    ),
    r'numResults': PropertySchema(
      id: 1,
      name: r'numResults',
      type: IsarType.long,
    ),
    r'results': PropertySchema(
      id: 2,
      name: r'results',
      type: IsarType.objectList,
      target: r'Result',
    ),
    r'status': PropertySchema(
      id: 3,
      name: r'status',
      type: IsarType.string,
    )
  },
  estimateSize: _mostViewResultModelEstimateSize,
  serialize: _mostViewResultModelSerialize,
  deserialize: _mostViewResultModelDeserialize,
  deserializeProp: _mostViewResultModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Result': ResultSchema,
    r'Media': MediaSchema,
    r'MediaMetadatum': MediaMetadatumSchema
  },
  getId: _mostViewResultModelGetId,
  getLinks: _mostViewResultModelGetLinks,
  attach: _mostViewResultModelAttach,
  version: '3.1.0+1',
);

int _mostViewResultModelEstimateSize(
  MostViewResultModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.copyright;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.results;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Result]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += ResultSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _mostViewResultModelSerialize(
  MostViewResultModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.copyright);
  writer.writeLong(offsets[1], object.numResults);
  writer.writeObjectList<Result>(
    offsets[2],
    allOffsets,
    ResultSchema.serialize,
    object.results,
  );
  writer.writeString(offsets[3], object.status);
}

MostViewResultModel _mostViewResultModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MostViewResultModel(
    copyright: reader.readStringOrNull(offsets[0]),
    numResults: reader.readLongOrNull(offsets[1]),
    results: reader.readObjectList<Result>(
      offsets[2],
      ResultSchema.deserialize,
      allOffsets,
      Result(),
    ),
    status: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _mostViewResultModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readObjectList<Result>(
        offset,
        ResultSchema.deserialize,
        allOffsets,
        Result(),
      )) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mostViewResultModelGetId(MostViewResultModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mostViewResultModelGetLinks(
    MostViewResultModel object) {
  return [];
}

void _mostViewResultModelAttach(
    IsarCollection<dynamic> col, Id id, MostViewResultModel object) {}

extension MostViewResultModelQueryWhereSort
    on QueryBuilder<MostViewResultModel, MostViewResultModel, QWhere> {
  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MostViewResultModelQueryWhere
    on QueryBuilder<MostViewResultModel, MostViewResultModel, QWhereClause> {
  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MostViewResultModelQueryFilter on QueryBuilder<MostViewResultModel,
    MostViewResultModel, QFilterCondition> {
  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'copyright',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'copyright',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'copyright',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'copyright',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'copyright',
        value: '',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      copyrightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'copyright',
        value: '',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      numResultsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numResults',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      numResultsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numResults',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      numResultsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numResults',
        value: value,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      numResultsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numResults',
        value: value,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      numResultsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numResults',
        value: value,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      numResultsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numResults',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'results',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'results',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'results',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'results',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'results',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'results',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'results',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'results',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }
}

extension MostViewResultModelQueryObject on QueryBuilder<MostViewResultModel,
    MostViewResultModel, QFilterCondition> {
  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterFilterCondition>
      resultsElement(FilterQuery<Result> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'results');
    });
  }
}

extension MostViewResultModelQueryLinks on QueryBuilder<MostViewResultModel,
    MostViewResultModel, QFilterCondition> {}

extension MostViewResultModelQuerySortBy
    on QueryBuilder<MostViewResultModel, MostViewResultModel, QSortBy> {
  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      sortByCopyright() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'copyright', Sort.asc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      sortByCopyrightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'copyright', Sort.desc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      sortByNumResults() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numResults', Sort.asc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      sortByNumResultsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numResults', Sort.desc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension MostViewResultModelQuerySortThenBy
    on QueryBuilder<MostViewResultModel, MostViewResultModel, QSortThenBy> {
  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      thenByCopyright() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'copyright', Sort.asc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      thenByCopyrightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'copyright', Sort.desc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      thenByNumResults() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numResults', Sort.asc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      thenByNumResultsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numResults', Sort.desc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension MostViewResultModelQueryWhereDistinct
    on QueryBuilder<MostViewResultModel, MostViewResultModel, QDistinct> {
  QueryBuilder<MostViewResultModel, MostViewResultModel, QDistinct>
      distinctByCopyright({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'copyright', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QDistinct>
      distinctByNumResults() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numResults');
    });
  }

  QueryBuilder<MostViewResultModel, MostViewResultModel, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }
}

extension MostViewResultModelQueryProperty
    on QueryBuilder<MostViewResultModel, MostViewResultModel, QQueryProperty> {
  QueryBuilder<MostViewResultModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MostViewResultModel, String?, QQueryOperations>
      copyrightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'copyright');
    });
  }

  QueryBuilder<MostViewResultModel, int?, QQueryOperations>
      numResultsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numResults');
    });
  }

  QueryBuilder<MostViewResultModel, List<Result>?, QQueryOperations>
      resultsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'results');
    });
  }

  QueryBuilder<MostViewResultModel, String?, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ResultSchema = Schema(
  name: r'Result',
  id: 2710412425235774975,
  properties: {
    r'adxKeywords': PropertySchema(
      id: 0,
      name: r'adxKeywords',
      type: IsarType.string,
    ),
    r'assetId': PropertySchema(
      id: 1,
      name: r'assetId',
      type: IsarType.long,
    ),
    r'byline': PropertySchema(
      id: 2,
      name: r'byline',
      type: IsarType.string,
    ),
    r'column': PropertySchema(
      id: 3,
      name: r'column',
      type: IsarType.string,
    ),
    r'desFacet': PropertySchema(
      id: 4,
      name: r'desFacet',
      type: IsarType.stringList,
    ),
    r'etaId': PropertySchema(
      id: 5,
      name: r'etaId',
      type: IsarType.long,
    ),
    r'geoFacet': PropertySchema(
      id: 6,
      name: r'geoFacet',
      type: IsarType.stringList,
    ),
    r'id': PropertySchema(
      id: 7,
      name: r'id',
      type: IsarType.long,
    ),
    r'media': PropertySchema(
      id: 8,
      name: r'media',
      type: IsarType.objectList,
      target: r'Media',
    ),
    r'nytdsection': PropertySchema(
      id: 9,
      name: r'nytdsection',
      type: IsarType.string,
    ),
    r'orgFacet': PropertySchema(
      id: 10,
      name: r'orgFacet',
      type: IsarType.stringList,
    ),
    r'perFacet': PropertySchema(
      id: 11,
      name: r'perFacet',
      type: IsarType.stringList,
    ),
    r'publishedDate': PropertySchema(
      id: 12,
      name: r'publishedDate',
      type: IsarType.dateTime,
    ),
    r'resultAbstract': PropertySchema(
      id: 13,
      name: r'resultAbstract',
      type: IsarType.string,
    ),
    r'section': PropertySchema(
      id: 14,
      name: r'section',
      type: IsarType.string,
    ),
    r'source': PropertySchema(
      id: 15,
      name: r'source',
      type: IsarType.string,
    ),
    r'subsection': PropertySchema(
      id: 16,
      name: r'subsection',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 17,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 18,
      name: r'type',
      type: IsarType.string,
    ),
    r'updated': PropertySchema(
      id: 19,
      name: r'updated',
      type: IsarType.string,
    ),
    r'uri': PropertySchema(
      id: 20,
      name: r'uri',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 21,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _resultEstimateSize,
  serialize: _resultSerialize,
  deserialize: _resultDeserialize,
  deserializeProp: _resultDeserializeProp,
);

int _resultEstimateSize(
  Result object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.adxKeywords;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.byline;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.column;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.desFacet;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.geoFacet;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.media;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Media]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += MediaSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.nytdsection;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.orgFacet;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.perFacet;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.resultAbstract;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.section;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.source;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subsection;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.updated;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uri;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _resultSerialize(
  Result object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.adxKeywords);
  writer.writeLong(offsets[1], object.assetId);
  writer.writeString(offsets[2], object.byline);
  writer.writeString(offsets[3], object.column);
  writer.writeStringList(offsets[4], object.desFacet);
  writer.writeLong(offsets[5], object.etaId);
  writer.writeStringList(offsets[6], object.geoFacet);
  writer.writeLong(offsets[7], object.id);
  writer.writeObjectList<Media>(
    offsets[8],
    allOffsets,
    MediaSchema.serialize,
    object.media,
  );
  writer.writeString(offsets[9], object.nytdsection);
  writer.writeStringList(offsets[10], object.orgFacet);
  writer.writeStringList(offsets[11], object.perFacet);
  writer.writeDateTime(offsets[12], object.publishedDate);
  writer.writeString(offsets[13], object.resultAbstract);
  writer.writeString(offsets[14], object.section);
  writer.writeString(offsets[15], object.source);
  writer.writeString(offsets[16], object.subsection);
  writer.writeString(offsets[17], object.title);
  writer.writeString(offsets[18], object.type);
  writer.writeString(offsets[19], object.updated);
  writer.writeString(offsets[20], object.uri);
  writer.writeString(offsets[21], object.url);
}

Result _resultDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Result(
    adxKeywords: reader.readStringOrNull(offsets[0]),
    assetId: reader.readLongOrNull(offsets[1]),
    byline: reader.readStringOrNull(offsets[2]),
    column: reader.readStringOrNull(offsets[3]),
    desFacet: reader.readStringList(offsets[4]),
    etaId: reader.readLongOrNull(offsets[5]),
    geoFacet: reader.readStringList(offsets[6]),
    id: reader.readLongOrNull(offsets[7]),
    media: reader.readObjectList<Media>(
      offsets[8],
      MediaSchema.deserialize,
      allOffsets,
      Media(),
    ),
    nytdsection: reader.readStringOrNull(offsets[9]),
    orgFacet: reader.readStringList(offsets[10]),
    perFacet: reader.readStringList(offsets[11]),
    publishedDate: reader.readDateTimeOrNull(offsets[12]),
    resultAbstract: reader.readStringOrNull(offsets[13]),
    section: reader.readStringOrNull(offsets[14]),
    source: reader.readStringOrNull(offsets[15]),
    subsection: reader.readStringOrNull(offsets[16]),
    title: reader.readStringOrNull(offsets[17]),
    type: reader.readStringOrNull(offsets[18]),
    updated: reader.readStringOrNull(offsets[19]),
    uri: reader.readStringOrNull(offsets[20]),
    url: reader.readStringOrNull(offsets[21]),
  );
  return object;
}

P _resultDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringList(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readObjectList<Media>(
        offset,
        MediaSchema.deserialize,
        allOffsets,
        Media(),
      )) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringList(offset)) as P;
    case 11:
      return (reader.readStringList(offset)) as P;
    case 12:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ResultQueryFilter on QueryBuilder<Result, Result, QFilterCondition> {
  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'adxKeywords',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'adxKeywords',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adxKeywords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adxKeywords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adxKeywords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adxKeywords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adxKeywords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adxKeywords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adxKeywords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adxKeywords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adxKeywords',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> adxKeywordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adxKeywords',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> assetIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assetId',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> assetIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assetId',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> assetIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assetId',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> assetIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assetId',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> assetIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assetId',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> assetIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assetId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'byline',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'byline',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'byline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'byline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'byline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'byline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'byline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'byline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'byline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'byline',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'byline',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> bylineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'byline',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'column',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'column',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'column',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'column',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'column',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'column',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'column',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'column',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'column',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'column',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'column',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> columnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'column',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'desFacet',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'desFacet',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      desFacetElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'desFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'desFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'desFacet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'desFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'desFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'desFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'desFacet',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desFacet',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      desFacetElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'desFacet',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'desFacet',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'desFacet',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'desFacet',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'desFacet',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'desFacet',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> desFacetLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'desFacet',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> etaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'etaId',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> etaIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'etaId',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> etaIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> etaIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'etaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> etaIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'etaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> etaIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'etaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'geoFacet',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'geoFacet',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'geoFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      geoFacetElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'geoFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'geoFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'geoFacet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'geoFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'geoFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'geoFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'geoFacet',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'geoFacet',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      geoFacetElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'geoFacet',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geoFacet',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geoFacet',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geoFacet',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geoFacet',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geoFacet',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> geoFacetLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geoFacet',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> mediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'media',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> mediaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'media',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> mediaLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'media',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> mediaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'media',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> mediaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'media',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> mediaLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'media',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> mediaLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'media',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> mediaLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'media',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nytdsection',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nytdsection',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nytdsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nytdsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nytdsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nytdsection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nytdsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nytdsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nytdsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nytdsection',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nytdsection',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nytdsectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nytdsection',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'orgFacet',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'orgFacet',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orgFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      orgFacetElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orgFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orgFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orgFacet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'orgFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'orgFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'orgFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'orgFacet',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orgFacet',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      orgFacetElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'orgFacet',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'orgFacet',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'orgFacet',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'orgFacet',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'orgFacet',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'orgFacet',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> orgFacetLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'orgFacet',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'perFacet',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'perFacet',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'perFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      perFacetElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'perFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'perFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'perFacet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'perFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'perFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'perFacet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'perFacet',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'perFacet',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      perFacetElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'perFacet',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perFacet',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perFacet',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perFacet',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perFacet',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perFacet',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> perFacetLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perFacet',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> publishedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'publishedDate',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> publishedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'publishedDate',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> publishedDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'publishedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> publishedDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'publishedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> publishedDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'publishedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> publishedDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'publishedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resultAbstract',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      resultAbstractIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resultAbstract',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resultAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resultAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resultAbstract',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'resultAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'resultAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'resultAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'resultAbstract',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> resultAbstractIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultAbstract',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      resultAbstractIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'resultAbstract',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'section',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'section',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'section',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'section',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'section',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'section',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'source',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'source',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'source',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subsection',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subsection',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subsection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subsection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subsection',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subsection',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> subsectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subsection',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updated',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updated',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updated',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updated',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> updatedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updated',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uri',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uri',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uri',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uri',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> uriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uri',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension ResultQueryObject on QueryBuilder<Result, Result, QFilterCondition> {
  QueryBuilder<Result, Result, QAfterFilterCondition> mediaElement(
      FilterQuery<Media> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'media');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MediaSchema = Schema(
  name: r'Media',
  id: 6434281596432674333,
  properties: {
    r'approvedForSyndication': PropertySchema(
      id: 0,
      name: r'approvedForSyndication',
      type: IsarType.long,
    ),
    r'caption': PropertySchema(
      id: 1,
      name: r'caption',
      type: IsarType.string,
    ),
    r'copyright': PropertySchema(
      id: 2,
      name: r'copyright',
      type: IsarType.string,
    ),
    r'mediaMetadata': PropertySchema(
      id: 3,
      name: r'mediaMetadata',
      type: IsarType.objectList,
      target: r'MediaMetadatum',
    ),
    r'subtype': PropertySchema(
      id: 4,
      name: r'subtype',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 5,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _mediaEstimateSize,
  serialize: _mediaSerialize,
  deserialize: _mediaDeserialize,
  deserializeProp: _mediaDeserializeProp,
);

int _mediaEstimateSize(
  Media object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.caption;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.copyright;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.mediaMetadata;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[MediaMetadatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              MediaMetadatumSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.subtype;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _mediaSerialize(
  Media object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.approvedForSyndication);
  writer.writeString(offsets[1], object.caption);
  writer.writeString(offsets[2], object.copyright);
  writer.writeObjectList<MediaMetadatum>(
    offsets[3],
    allOffsets,
    MediaMetadatumSchema.serialize,
    object.mediaMetadata,
  );
  writer.writeString(offsets[4], object.subtype);
  writer.writeString(offsets[5], object.type);
}

Media _mediaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Media(
    approvedForSyndication: reader.readLongOrNull(offsets[0]),
    caption: reader.readStringOrNull(offsets[1]),
    copyright: reader.readStringOrNull(offsets[2]),
    mediaMetadata: reader.readObjectList<MediaMetadatum>(
      offsets[3],
      MediaMetadatumSchema.deserialize,
      allOffsets,
      MediaMetadatum(),
    ),
    subtype: reader.readStringOrNull(offsets[4]),
    type: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _mediaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readObjectList<MediaMetadatum>(
        offset,
        MediaMetadatumSchema.deserialize,
        allOffsets,
        MediaMetadatum(),
      )) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MediaQueryFilter on QueryBuilder<Media, Media, QFilterCondition> {
  QueryBuilder<Media, Media, QAfterFilterCondition>
      approvedForSyndicationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'approvedForSyndication',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition>
      approvedForSyndicationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'approvedForSyndication',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition>
      approvedForSyndicationEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approvedForSyndication',
        value: value,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition>
      approvedForSyndicationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'approvedForSyndication',
        value: value,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition>
      approvedForSyndicationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'approvedForSyndication',
        value: value,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition>
      approvedForSyndicationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'approvedForSyndication',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'caption',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'caption',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'caption',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'caption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'caption',
        value: '',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> captionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'caption',
        value: '',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'copyright',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'copyright',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'copyright',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'copyright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'copyright',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'copyright',
        value: '',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> copyrightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'copyright',
        value: '',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> mediaMetadataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaMetadata',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> mediaMetadataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaMetadata',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> mediaMetadataLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaMetadata',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> mediaMetadataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaMetadata',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> mediaMetadataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaMetadata',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> mediaMetadataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaMetadata',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition>
      mediaMetadataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaMetadata',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> mediaMetadataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaMetadata',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subtype',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subtype',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtype',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subtype',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtype',
        value: '',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> subtypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subtype',
        value: '',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Media, Media, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension MediaQueryObject on QueryBuilder<Media, Media, QFilterCondition> {
  QueryBuilder<Media, Media, QAfterFilterCondition> mediaMetadataElement(
      FilterQuery<MediaMetadatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'mediaMetadata');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MediaMetadatumSchema = Schema(
  name: r'MediaMetadatum',
  id: -3281013425447589057,
  properties: {
    r'format': PropertySchema(
      id: 0,
      name: r'format',
      type: IsarType.string,
    ),
    r'height': PropertySchema(
      id: 1,
      name: r'height',
      type: IsarType.long,
    ),
    r'url': PropertySchema(
      id: 2,
      name: r'url',
      type: IsarType.string,
    ),
    r'width': PropertySchema(
      id: 3,
      name: r'width',
      type: IsarType.long,
    )
  },
  estimateSize: _mediaMetadatumEstimateSize,
  serialize: _mediaMetadatumSerialize,
  deserialize: _mediaMetadatumDeserialize,
  deserializeProp: _mediaMetadatumDeserializeProp,
);

int _mediaMetadatumEstimateSize(
  MediaMetadatum object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.format;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _mediaMetadatumSerialize(
  MediaMetadatum object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.format);
  writer.writeLong(offsets[1], object.height);
  writer.writeString(offsets[2], object.url);
  writer.writeLong(offsets[3], object.width);
}

MediaMetadatum _mediaMetadatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MediaMetadatum(
    format: reader.readStringOrNull(offsets[0]),
    height: reader.readLongOrNull(offsets[1]),
    url: reader.readStringOrNull(offsets[2]),
    width: reader.readLongOrNull(offsets[3]),
  );
  return object;
}

P _mediaMetadatumDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MediaMetadatumQueryFilter
    on QueryBuilder<MediaMetadatum, MediaMetadatum, QFilterCondition> {
  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'format',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'format',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'format',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'format',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'format',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'format',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'format',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'format',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'format',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'format',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'format',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      formatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'format',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      heightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      heightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      heightEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      heightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      heightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      heightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      widthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'width',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      widthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'width',
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      widthEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'width',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      widthGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'width',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      widthLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'width',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaMetadatum, MediaMetadatum, QAfterFilterCondition>
      widthBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'width',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MediaMetadatumQueryObject
    on QueryBuilder<MediaMetadatum, MediaMetadatum, QFilterCondition> {}
